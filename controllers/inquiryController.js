const inquiryService = require('../services/inquiryService.js');

const createInquiry = async (req, res) => {
  const { name, email, content } = req.body;

  const hasKey = {
    name: false,
    email: false,
    content: false,
  };

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
  /** 이메일 형식 체크하는 함수 */
  const emailCheck =
    /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
  if (emailCheck.test(email) == false) {
    res.status(400).json({ message: '이메일 형식이 올바르지 않습니다.' });
    return;
  }

  const inquiry = await inquiryService.createInquiry(name, email, content);

  res.status(200).json({ message: '문의 작성 성공!' });
};

const userInquiry = async (req, res) => {
  const { email } = req.body;
  const userInquiry = await inquiryService.userInquiry(email);
  res.status(200).json({ message: userInquiry });
  return userInquiry;
};

module.exports = {
  createInquiry,
  userInquiry,
};
