// 가상의 쇼핑몰에서 결제 금액을 계산하는 프로그램을 만들어봅니다.
// 1. 구매자가 장바구니에 담은 상품들의 전체 금액을 계산합니다. 
 // - List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];
// 2. 총 금액이 20,000원 이상일 경우, 10% 할인을 적용합니다.
 // - [조건] 티셔츠: 10000원, 바지: 8000원, 모자: 4000원
// 3. 최종적으로 구매자가 결제해야 하는 금액을 출력합니다.
 // - 출력 형태 : 최종 결제 금액은 [금액]원입니다! 

void main(){
// 쇼핑몰 금액 + 장바구니에 담은 상품
  Map<String, int> price = {'티셔츠':10000, "바지":8000, "모자":4000};
  List<String> cart = ['티셔츠','바지','모자','티셔츠','바지'];

// 총 금액을 담을 변수 만들기 (현재 금액: -)
int totalPrice = 0;

/// for(초기화, 조건식, 증감식){}
for (var item in cart){
  int itemPrice = price[item]!;
  print('$item:$itemPrice원');
  totalPrice = totalPrice + itemPrice;
  print('-> 현재 총액: ${totalPrice}원');
}
// if(조건식) {실행할 코드}
// (조건식): 토탈값에서 2만원이 넘기때문에 10% 값을 빼준다 + .toInt로 정수로 확정해준다. 
int finalPrice = totalPrice;
if(finalPrice >= 20000){
  finalPrice = (finalPrice * 0.9).toInt();}

// 최종 금액 출력
print(finalPrice);

 // - 출력 형태 : 최종 결제 금액은 [금액]원입니다! 
print('최종 결제 금액은 [$finalPrice]원입니다!');
}