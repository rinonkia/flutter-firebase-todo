import 'package:learn_ddd/domain/entities/member.dart';
import 'package:learn_ddd/domain/services/member_service.dart';
import 'package:learn_ddd/infla/member/i_member_repository.dart';

class MemberApplicationService {
  final IMemberRepository repository;
  final MemberService userService;

  MemberApplicationService(this.repository, this.userService);

  void register(Member user) {
    if (userService.isExistsSameName(user.name)) {
      throw ArgumentError('exists same name.');
    }
    repository.save(user);
  }
}
