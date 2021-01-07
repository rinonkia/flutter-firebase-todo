import 'package:learn_ddd/domain/entities/member.dart';
import 'package:learn_ddd/domain/vo/member_name.dart';

abstract class IMemberRepository {
  Member findByName(MemberName name);
  void save(Member member);
  List<Member> getAll();
}
