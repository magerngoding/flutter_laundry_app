// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_laundry_app/config/failure.dart';
import 'package:http/http.dart';

class AppResponse {
  static Map data(Response response) {
    DMethod.printResponse(response);

    switch (response.statusCode) {
      case 200: // read
      case 201: // create, update
        var responseBody = jsonDecode(response.body);
        return responseBody;
      case 204: // delete
        return {'success': true};
      case 400:
        throw BadRequestFailure(response.body);
      case 401:
        throw UnautorisedFailure(response.body);
      case 422:
        throw InvalidInputFailure(response.body);
      case 403: // url bermasalah
        throw ForbiddenFailure(response.body);
      case 404: // url tidak ditemukan / data kosong
        throw NotFoundFailure(response.body);
      case 500: // ada masalah dibagian server
        throw ServerFailure(response.body);
      default:
        throw FetchFailure(response.body);
    }
  }

  static invalidInput(BuildContext context, String messageBody) {
    Map errors = jsonDecode(messageBody)['errors'];
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          titlePadding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          title: Text(
            'Invalid Input',
          ),
          children: [
            ...errors.entries.map((e) {
              return ListTile(
                title: Text(e.key),
                subtitle: Column(
                  children: (e.value as List).map((itemError) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('-'),
                        Expanded(child: Text(itemError)),
                      ],
                    );
                  }).toList(),
                ),
              );
            }).toList(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Close',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
