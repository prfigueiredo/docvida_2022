import 'package:gsheets/gsheets.dart';

class UserSheetsApi{

  static const _credential = r'''
  
  {
  "type": "service_account",
  "project_id": "gsheets-docvida",
  "private_key_id": "12b4df43c5e8c9b3d13aaceb3610ac88aacb35e1",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC10d2GPCJ28P3k\nwAZ2cp4vuSeLl5hvWGk26PM8/rH0lDR+KQUavMNz84YQQn5hUJKgUo2DwZ9VThfS\nG3DBFiP7/ZlEFemOt/r4q9XopfmtuRvuVTuueVVCDREGkW650Wk1ttX/qRoZ2hjj\nFKTmgWHuF0N4/ijNcGU4KSMhuBhd4Zt4qLQKx+Qx4PsERLeiJkWMomDQLruAua2u\ncloE3gjvLxZejdPSVMKieEypz3WrT2pzUQ9bRFcQL4OKH8pEzUvYH/1zm4a+tI/t\nYBhp4FHJqsJNwChGHUPGxuRssSWT4JgL8y5ehjlEzEmF4l0Uhoai6/rMZ4Ma+vVy\nfFtizN/DAgMBAAECggEAFrxGahms6Zia9va4GCme9DK/6imrqwiwJ2ibud3TXNUH\nd1sjw0MlYaNq+S+HZB3SJ/AKuBYHGYCpY+GAiPR+zWzZtHTU/r6syFmcZvoSLZH/\nFx9bVibf7WF65opbAStZb5kMS2rW07K89/BF6nj1SPNpwYBuk7nhPlOOjBHcIij0\nyQmLprETvYFvx7oGy0usxrTuyvPSjogfnGL5TtRS1p3bCriavoY/kB0sO5RZeZJ/\nbCaCi81NLHDlmbMMIyF8c8pcWmYSdHKoBmkjSCiicO8mVDCGFUHRBB/NtAHiyJwx\nEbdM9SDvbkROP2VlGD/32C/7l19lGWj2n2tJPrY/eQKBgQDp6iUI6PJh98yHuPDY\nRhZ6cqpiw21CLQZ+MnuSjN5ULQQ7LMphiYRkfPnoR7GtyER2H9ktaAzI40+MfgCX\npMqUR0FNhhscvHNXakdcixzY163PalmAw4+JMsMbMH7jqL+vyuCJx44Aiu9iiI4q\n0W70aLmRFSwkYggF7DWNBcRHTwKBgQDG/I60lwyxmPojeYEW9EXFd3GOqB38lI+p\nrG2OxuNCFWWAbaipEqWBd0jWoWMw8dHJukbI+xAKE1HMC2IVqUzb8z71wOEyG1X6\nyFjwT3mTEv0gxGK9sjoQPHVv9hQean0qK6GxykxEXyeD4QG2EZO11Z05eOlSo6Ru\nn00wc9qDTQKBgAZgzw+2Il3PfvE4dsC+8H/4PnMg9wq15ZZtU/dEBg/vhk0CxKXy\nNPz0d3AA/HRLoKpD5g0Z6DdWE2Y2TVfVM3zlkH9Hp9eZv99jU3zPgkLbZq7gLH6Z\nVoGcM7u7D8qvYEKv2n2HRnT3VN2v8YhzW34omN6+4AxB7AwVS8SDor17AoGBAJBo\n9gAlpza0eMSKB59rA7+9YZJQfAK0plZTJud5e7CX6qP78W1SdP6yXRA268+3j7LB\nF2IAorFNOA3HLRXfWkI+FDEyG7zLjeiEwdcVNnwASegf3jEhSXZDCk+I3Sz9x3x1\nUdG/qP3tuLXC9AT4WKScNJBjKaGp1UnbHp/NVIX5AoGAS5GQJ/G5fl+y4ow0XZv3\nBnwlugA4cp+2MntiebFnrhVsMjR2SHQqj7umRK+UvJ5GuGDXWnr42d0pNk2bICSH\nM4Q3c+pjSze8ieLY+hj3WBtX2tnz8Bhmm+eH1ImLl7lE59yQCBm6X3Bh5cB8M1Bk\nGi74CVTZkZPIldHptNIdK3k=\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets-docvida@gsheets-docvida.iam.gserviceaccount.com",
  "client_id": "116637380377352337076",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets-docvida%40gsheets-docvida.iam.gserviceaccount.com"
}
  
''';
  static final _spreadsheetId = '1SzOYBJhVtdSf5EVuq20kg7qhOLTWrzwPsucOCalKMPA' ;
  static final _gsheet = GSheets(_credential);
  static Worksheet? _userSheet;

  static Future init() async {
   final spreadsheet = await _gsheet.spreadsheet(_spreadsheetId);
   _userSheet = await _getWorkSheet(spreadsheet, title: 'Users_Docvida');
  }

  static Future<Worksheet> _getWorkSheet(
    Spreadsheet spreadsheet, {
      required String title,
  }) async {
    try{
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetById(title)!;
    }

  }
}

