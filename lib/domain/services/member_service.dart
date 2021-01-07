import 'package:learn_ddd/domain/vo/member_name.dart';
import 'package:learn_ddd/infla/member/i_member_repository.dart';

class MemberService {
  final IMemberRepository repository;

  MemberService(this.repository);

  bool isExistsSameName(MemberName name) {
    return repository.findByName(name) != null ? true : false;
  }
}
