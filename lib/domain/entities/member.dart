import 'package:flutter/foundation.dart';
import 'package:learn_ddd/domain/vo/member_id.dart';
import 'package:learn_ddd/domain/vo/member_name.dart';

class Member {
  final MemberId id;
  MemberName name;

  Member({
    @required this.id,
    @required this.name,
  });

  void ChangeMemberName(MemberName name) {
    if (name == null) {
      throw ArgumentError();
    }
    this.name = name;
  }
}
