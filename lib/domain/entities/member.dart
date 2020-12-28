import 'package:flutter/foundation.dart';
import 'package:learn_ddd/domain/entities/member_id.dart';
import 'package:learn_ddd/domain/entities/member_name.dart';

class Member {
  final MemberId id;
  final MemberName name;

  const Member({
    @required this.id,
    @required this.name,
  });
}