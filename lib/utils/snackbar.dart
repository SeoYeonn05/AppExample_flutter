import 'package:flutter/material.dart';
import 'package:storeapp/utils/toastmessage.dart';

void showSnackBar(dynamic context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg), //  icon, button도 가능
    duration: const Duration(seconds: 5), // snackbar가 떠 있는 시간
    action: SnackBarAction( //  필요시 추가 작업, ex 버튼 넣을 때
      label: 'button', //  버튼 이름
      onPressed: () {
        showToast("버튼 클릭");
      }, // 버튼 눌렀을 때
    )
  ));
}
