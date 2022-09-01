const userService = require('../services/loginLogoutService.js');

const login = async (req, res) => {
  console.log('controller 1');
  const { email, password } = req.body;

  if (!(email && password)) {
    res.status(400).json({ message: '이메일/비밀번호를 입력해주세요.' });
    return;
  }

  /** 이메일 형식 체크하는 함수 (알파벳+숫자 + @{1개만 입력 가능} + 알파벳+숫자 + .{1개만 입력 가능} + 알파벳+숫자) */
  const emailCheck =
    /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  if (emailCheck.test(email) == false) {
    //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우
    res.status(400).json({ message: '이메일 형식이 올바르지 않습니다.' });
    return;
  }
  const pwCheck =
    /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z0-9\W]{8,}$/;
  if (pwCheck.test(password) == false) {
    res.status(400).json({ message: '비밀번호 형식이 올바르지 않습니다.' });
    return;
  }

  const user = await userService.loginUsingEmail(email, password);

  try {
    // 등록된 email인지 확인
    if (!user) {
      res.status(404).json({ message: '존재하지 않는 이메일입니다.' });
      return;
    }

    //password가 틀릴 경우
    if (user.isPwCorrect === false) {
      res.status(400).json({ message: '비밀번호를 확인해주세요.' });
      return;
    }

    res.status(200).json({ message: '로그인 성공!', token: user.token });
  } catch {
    res.status(500).json({
      message: '로그인 도중 문제가 발생하였습니다.',
    });
  }
};

const logout = async (req, res) => {
  if (req.session.user) {
    req.session.destroy(err => {
      if (err) {
        console.log('세션 삭제시에 에러가 발생했습니다.');
        res
          .status(400)
          .json({ message: '로그아웃 도중 에러가 발생하였습니다.' });
        return;
      }
      console.log('세션이 삭제됐습니다.');
      res.status(200).json({ message: '로그아웃에 상공하였습니다!' });
      res.redirect('/login');
    });
  } else {
    console.log('로그인이 안돼있으시네요?');
    res.redirect('/login');
  }
};

module.exports = {
  login,
  logout,
};
