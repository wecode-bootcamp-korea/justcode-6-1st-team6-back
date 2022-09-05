const userService = require('../services/userService');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const pong = async (req, res) => {
  res.status(200).json({ message: 'pong' });
};

const createUser = async (req, res) => {
  console.log('controller 1');

  const { user, email, pwd } = req.body;

  const hasKey = { user: false, email: false, pwd: false };

  /** 받아온 데이터에 키 + 벨류 값이 존재하는지 확인하는 코드 */
  const requireKey = Object.keys(hasKey);

  Object.entries(req.body).forEach(keyValue => {
    const [key, value] = keyValue;
    if (requireKey.includes(key) && value) {
      hasKey[key] = true;
    }
  });

  /** 받아온 데이터에 키 + 벨류 값이 없을때 에러를 표시해주는 코드*/
  const hasKeyArray = Object.entries(hasKey);
  for (let i = 0; i < hasKeyArray.length; i++) {
    const [key, value] = hasKeyArray[i];
    if (!value) {
      res.status(400).json({ message: `${key}이/가 없습니다.` });
      return;
    }
  }
  /** 이름 형식 체크하는 함수 */
  const nameCheck = /^[가-힣a-zA-Z\s]+$/;
  if (nameCheck.test(user) == false) {
    res.status(400).json({ message: '이름 형식이 올바르지 않습니다.' });
    return;
  }

  /** 이메일 형식 체크하는 함수 */
  const emailCheck =
    /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  if (emailCheck.test(email) == false) {
    res.status(400).json({ message: '이메일 형식이 올바르지 않습니다.' });
    return;
  }

  /** 이메일 중복 여부 확인하는 함수 */
  const userEmail = await userService.checkEmailDuplicate(email);
  if (userEmail) {
    res.status(400).json({ message: '이미 사용중인 이메일입니다.' });
    return;
  }

  /** 비밀번호 형식 체크하는 함수 */
  const pwCheck =
    /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z0-9\W]{8,}$/;
  if (pwCheck.test(pwd) == false) {
    res.status(400).json({ message: '비밀번호 형식이 올바르지 않습니다.' });
    return;
  }

  const users = await userService.createUser(user, email, pwd);

  try {
    if (!(pwd.length > 7)) {
      res.status(400).json({ message: '비밀번호를 다시 입력해주세요.' });
      return;
    }
  } catch {
    res.status(500).json({ message: '회원가입 도중 문제가 발생하였습니다.' });
  }

  console.log('controller 2');

  res.status(201).json({ message: '회원가입 성공!' });
};

module.exports = {
  createUser,
  pong,
};
