import 'package:learn_ddd/domain/entities/member.dart';
import 'package:learn_ddd/domain/vo/member_name.dart';
import 'package:learn_ddd/infla/member/i_member_repository.dart';

class MemberInMemoryRepository implements IMemberRepository {
  List<Member> users = [];

  void save(Member user) {
    users.add(user);
  }

  Member findByName(MemberName name) {
    users.forEach((user) {
      if (user.name == name.value) {
        print('same!');
        return user;
      }
    });
    return null;
  }

  List<Member> getAll() {
    return users;
  }
}
