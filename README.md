# 프로젝트 소개
<strong>키오스크</strong> 사용에 <strong>어려움</strong>을 겪는 중장년층과 노인층의 <strong>불편함을 해소시키기 위해</strong> 현재 키오스크를 사용중인 프렌차이즈 및 매장들의 키오스크 매뉴얼을 수집하여 <strong>연습</strong>할 수 있도록 도움을 주는 <strong>사이트 개발</strong>
# 목차
- [프로젝트 소개](#프로젝트-소개)
- [목차](#목차)
- [기능 소개](#기능-소개)
  - [메인](#메인)
   - [롯데리아](#롯데리아)
   - [KFC](#kfc)
   - [관리자 페이지 - 메뉴](#관리자-페이지---메뉴)
   - [관리자 페이지 - 토핑](#관리자-페이지---토핑)
   - [관리자 페이지 - 카테고리](#관리자-페이지---카테고리)
   - [관리자 페이지 - 통계](#관리자-페이지---통계)
- [개발 작업 내용](#개별-작업-내용)
  - [박지민](#박지민)
  - [양지선](#양지선)
  - [유재학](#유재학)
  - [황민영](#황민영)

# 기능 소개
## 메인
![메인 페이지 설명](https://user-images.githubusercontent.com/38309884/96071211-99bfa600-0edc-11eb-81cf-9d3cd2414318.png)
① 로그인
로그인 버튼을 클릭할 경우 로그인 페이지로 이동합니다

② 로그인 페이지
관리자의 아이디와 페스워드를 정확하게 입력한 경우 로그인 가능합니다

③ 로그인 후 변경 사항
로그인에 성공할 경우 관리자 로그인 버튼이 관리자 페이지와 로그아웃 버튼으로 변경됩니다

④ 연습할 키오스크 선택
연습할 키오스크를 선택하는 것으로 현재 구현된 KFC와 롯데리아 키오스크 연습이 가능합니다

## 롯데리아
![롯데리아](https://user-images.githubusercontent.com/38309884/96071204-97f5e280-0edc-11eb-9e18-52bbc6671e2a.png)
① 광고 페이지
- 롯데리아 키오스크에 처음 들어가면 보이는 화면으로 광고를 클릭하면 다음 페이지로 이동 가능합니다
 - 사용자가 다음에 어떤 행동을 해야할지 모르는 경우를 대비하여 일정시간 동안 클릭 이벤트가 없을 경우 오른쪽 위에 툴팁을 통해 다음에 해야할 행동에 대해 설명을 줍니다

② 결제 방법 선택
- 사용자가 원하는 결제 방법을 클릭하면 다음 페이지로 이동 가능합니다

③ 메인 화면
- 카테고리를 클릭하여 원하는 카테고리로 이동 가능합니다
- 메뉴를 클릭하여 주문 가능 만약 버거인 경우 ④으로 이동 합니다
- 주문 목록, 전체 수량, 총 금액을 확인할 수 있고 동일 제품의 갯수를 늘릴 수 있습니다
- 취소하기 버튼을 클릭할 경우 결제 방법을 선택하는 페이지로 이동
- 결제하기 버튼을 통해 결제 페이지로 이동 가능합니다

④ 햄버거 단위 선택
- 버거만 버튼을 클릭할 경우 단품이 주문됩니다
- 세트를 클릭할 경우 ⑤으로 이동합니다
- 엑스 버튼을 클릭할 경우 주문없이 ③으로 이동합니다

⑤ 사이드 변경
- 카테고리를 클릭하여 원하는 카테고리로 이동 가능합니다
- 디저트를 클릭한 경우 자동으로 음료로 이동합니다
- 취소 버튼을 클릭할 경우 주문없이 ③으로 이동합니다
- 선택완료 버튼을 클릭한 경우 현재 클릭된 정보를 토대로 주문합니다

⑥ 결제 페이지
- 사용자가 주문한 내역과 총 금액을 확인할 수 있습니다
- 포장이나 매장 식사를 선택합니다
- 취소하기를 클릭할 경우 메인 화면으로 이동합니다
- 모든 선택을 한 후 주문완료 버튼을 클릭하면 주문이 완료되어 키오스크를 선택하는 페이지로 이동합니다

## KFC
![KFC](https://user-images.githubusercontent.com/38309884/96071176-86acd600-0edc-11eb-811f-bbe04f1cb9b7.png)

① 메인 페이지
- 카테고리를 클릭하여 원하는 카테고리로 이동 가능합니다
- 메뉴를 클릭하여 주문 가능합니다
- 전체 삭제 버튼을 통해 모든 주문 내역을 지울 수 있습니다
- 주문된 메뉴의 경우 수량 조절 가능합니다
- 주문된 메뉴의 수와 총 금액 확인 가능합니다
- 메뉴 목록이 비어있을 경우 주문 버튼클릭했을 때 다음으로 못 넘어갑니다

② 단위 선택
- 햄버거나 치킨을 클릭했을 경우 나옵니다
- 사용자는 원하는 단위를 클릭후 확인 버튼을 누르면 ③으로 이동합니다
- 치킨의 경우 사이드의 변경이 없기 때문에 바로 주문되어 ①으로 이동합니다

③ 변경 가능한 내용 확인
- 사용자가 선택한 단위에 따라 변경 가능한 내용이 다릅니다
- 상단에 있는 플러스, 마이너스 버튼을 통해 수량 조절 가능합니다
- 현재 선택된 메뉴의 금액 확인 가능합니다
- 확인버튼을 클릭할 경우 주문 목록에 내용이 추가되고 ①으로 이동합니다

④ 토핑 변경
- 조절하고 싶은 토핑의 플러스, 마이너스 버튼을 클릭하여 토핑 수를 조절할 수 있습니다

⑤ 사이드 변경
- 원하는 사이드로 변경 가능합니다
- 선택된 사이드에 따라 추가 금액 적용됩니다

⑥ 장소 선택
- 매장 또는 포장 선택할 수 있습니다

⑦ 추천 메뉴
- 결제 전에 사용자에게 추가적으로 메뉴 추천합니다
- 중복 선택 불가능합니다

⑧ 주문 목록 확인
- 메인 페이지에서 주문한 내용과 추천 메뉴에서 선택한 내용들이 모두 들어간 주문 목록을 확인할 수 있습니다
- 최종 결제 금액 확인 가능합니다

⑨ 결제 수단 선택
- KFC에서 제공하는 결제 수단을 확인 후 선택할 수 있습니다

⑪ 결제 수단 및 결제 금액 확인
- 사용자가 선택한 결제 수단과 총 결제 금액을 확인할 수 있습니다

⑫ 결제 확인 
- 실제 키오스크에서는 결제가 이루어지는 화면이지만, 연습 사이트이기 때문에 확인 버튼을 통해 넘어갈 수 있습니다

## 관리자 페이지 - 메뉴
![메뉴](https://user-images.githubusercontent.com/38309884/96071209-99270f80-0edc-11eb-8c56-df51d0d36e4e.png)
① 메인 화면
- 이미지 업로드할 때 드래그앤 드롭으로 가능합니다.
- 카테고리 선택 후 메뉴에서 기존 메뉴를 선택한 경우 해당 매뉴 수정 가능합니다
- 토핑 정보 부분에서 사용되는 토핑 추가 및 변경 가능합니다

② 프로모션/할인 선택
- 여러 제품을 묶은 프로모션인지 가격 할인 행사인지 선택할 수 있습니다

③ 프로모션 구성
- 묶음 상품을 만들 때 어떤 제품들을 묶을 지 선택할 수 있습니다
- 플러스 버튼을 통해 수를 늘릴 수 있습니다
- 마이너스 버튼을 통해 선택했던 제품을 지울 수 있습니다

④ 할인 적용
- 할인가 또는 할인율을 입력하여 적용 가능합니다

⑤ 단위
- 햄버거의 세트가 기본으로 감자튀김하고 콜라가 기본 구성품으로 있는 것 처럼 공통적으로 기본 구성품을 넣어주기 위해 사용합니다
- 추가/삭제/수정 가능합니다

⑥ 단위 추가/수정
- 이름 변경, 구성품 변경 가능합니다
- 플러스 버튼을 통해 구성품목을 늘릴 수 있습니다
-  마이너스 버튼을 통해 구성품목을 줄일 수 있습니다

⑦ 관련 메뉴 설정
- 단위와 달리 기본 구성품이 없고, 같은 이름의 메뉴를 올릴 때 사용 합니다 
ex) 양념치킨 3조각, 양념치킨 5조각을 만들려고 할 경우 양념치킨을 관련 메뉴로 설정합니다

## 관리자 페이지 - 토핑
![토핑](https://user-images.githubusercontent.com/38309884/96071216-9af0d300-0edc-11eb-96cc-9c5e114be5af.png)
① 메인 페이지
- 새로운 토핑 추가 가능합니다
- 토핑 이름을 클릭한 경우 해당 토핑 수정 가능합니다
- 토핑 이름을 통한 검색 가능합니다
- 토핑 다섯개를 기준으로 페이지가 생성됩니다

② 사용법 툴팁
- 물음표부분에 마우스를 올릴 경우 사용법에 대한 툴팁을 제공합니다

③ 이미지 미리보기
- 사진 미리보기란에 있는 아이콘에 마우스를 올릴 경우 해당 토핑에 적용되는 이미지 미리볼 수 있습니다

## 관리자 페이지 - 카테고리
![카테고리](https://user-images.githubusercontent.com/38309884/96071215-9af0d300-0edc-11eb-9602-bfafa9fa36d2.png)
① 메인 페이지
- 새로운 카테고리 추가 가능합니다
- 카테고리에 이미지를 넣어야하는 경우 이미지 넣기 체크 박스를 클릭 후 이미지 추가가 가능합니다
- 카테고리 이름을 클릭한 경우 해당 카테고리 수정 가능합니다
- 카테고리 이름을 통한 검색 가능합니다
- 카테고리 다섯개를 기준으로 페이지가 생성됩니다

② 사용법 툴팁
- 물음표부분에 마우스를 올릴 경우 사용법에 대한 툴팁을 제공합니다

③ 이미지 미리보기
- 사진 미리보기란에 있는 아이콘에 마우스를 올릴 경우 해당 카테고리에 적용되는 이미지를 미리볼 수 있습니다
## 관리자 페이지 - 통계
![통계](https://user-images.githubusercontent.com/38309884/96071218-9b896980-0edc-11eb-8109-42eaccfa8de6.png)
① 메인 페이지
 - 해당 년도의 월별 키오스크 주문 성공률을 확인할 수 있습니다   
 - 모든 년도에 대한 키오스크 주문 성공률를 확인할 수 있습니다
- 사용자가 중간에 포기하고 나간 지점을 확인할 수 있습니다
- 주문에 성공한 사용자들 키오스크 난이도가 쉽다고 선택한 비율로 매장의 순위를 확인할 수 있습니다

# 개별 작업 내용
## 박지민
## 양지선
## 유재학
### 모달 & 툴팁 순서 유지
![12518031137-8088-kiosk-kfc-index](https://user-images.githubusercontent.com/38309884/96090255-e61ddc80-0f02-11eb-808b-df84854f892f.gif)
다음 영상을 보면 사용자가 다음이나 완료 버튼을 클릭할 경우 다음 화면이 나타나고 취소 버튼을 클릭하면 이전 화면이 순서대로 보이는 것을 확인할 수 있습니다
  
이벤트를 통해 해당 화면에 이전 버튼을 클릭할 경우 해당 화면을 하나하나 설정할 수 있지만 연결해야 하는 화면이 많고 다른 키오스크에 적용하려면 또 작업해야 하므로 선입후출인 스택 방식을 통해 관리했습니다
  
![스택 저장](https://user-images.githubusercontent.com/38309884/96090969-eff40f80-0f03-11eb-8785-8e03ecb8c9a0.PNG)
해당 화면이 열릴 때마다 화면의 ID 값과 한글 이름을 리스트의 끝에 저장합니다. 그리고 툴팁 위치를 저장하고 타이머를 돌려주는 함수도 함께 사용합니다.
![스택 제거](https://user-images.githubusercontent.com/38309884/96090971-f08ca600-0f03-11eb-87bb-f5fbbaf444d2.PNG)
  
취소 버튼을 클릭한 경우 툴팁에 대한 타이머를 멈추고, 리스트의 가장 끝에 있는 값을 제거합니다. 제거한 값의 ID를 통해 화면을 안 보이게 설정하고, 다시 리스트의 가장 끝에 있는 값에 접근해서 화면에 보여줍니다. 마지막으로 툴팁도 가장 끝에 있는 값을 제거 후 위치를 저장하지 않고 타이머만 활성화합니다.
### 통계 자료 수집
- 주문 성공
- 강제 종료
### 통계 데이터 추출
- 월별 성공률

![통계 추가 1](https://user-images.githubusercontent.com/38309884/96081931-486fe080-0ef5-11eb-8fb7-92f7946f54b2.png)

 해당 년도에 매달 성공률을 구하기 위해 각 년도, 각 달들의 종료지점의 비율을 구한 후 거기서 사용자가 원하는 년도의 정보와 성공한 비율을 뽑아오는 방식으로 생각했습니다  
  
 종료지점들의 비율을 구하기 위해 PATIO_TO_REPORT를 사용했고, 소수점 둘째자리에서 반올림하기 위해 ROUND를 함께 사용 했습니다 또한 해당 년도에 따른 달들의 비율이기 때문에 PARTITION을 통해 년도와 달을 한 번 더 묶었습니다.
  
 그렇게 해서 나온 값들 중 WHERE을 통해 사용자가 선택한 년도와 성공한 값만 뽑아오는 방식으로 필요한 값을 뽑아냈습니다
- 전체 성공률

![통계 추가 2](https://user-images.githubusercontent.com/38309884/96084866-c8e51000-0efa-11eb-8ca8-9ae9826c946c.png)
하나의 쿼리문으로 성공률과 실패율을 동시에 얻기 힘들다 생각해서 먼저 성공률을 쿼리문을 통해 얻고 service단에서 실수형 데이터 100에 성공률을 빼는 방식을 통해 실패율을 따로 구했습니다
  
성공률을 구하기 위해서 해당 매장과 종료지점으로 먼저 그룹으로 묶은 후 RATIO_TO_REPORT를 통해 종료지점들의 비율을 구했고 PARTITION을 통해 매장을 한번더 묶었기 때문에 각각의 매장들의 종료지점 비율 값이 나오게 됩니다
  
이렇게 나온 데이터에 WHERE을 통해 해당 매장과 성공한 데이터 값을 뽑아 해당 매장의 성공률을 받을 수 있습니다

- 사용자가 포기하는 구간

![통계 추가 3](https://user-images.githubusercontent.com/38309884/96086719-ab657580-0efd-11eb-8b32-9bc397cc250d.png)
사용자들이 중간에 포기하는 구간과 그 수치를 알기 위해 종료 지점을 그룹으로 묶은 후 count를 통해 그 수를 파악합니다
  
마지막으로 WHERE을 통해 해당 매장과 성공하지 않은 데이터 값을 뽑아냅니다
- 사용자가 투표한 키오스크 난이도 순위

![통계 추가 4](https://user-images.githubusercontent.com/38309884/96086723-ac96a280-0efd-11eb-9095-20f2e9fbe9f0.png)
각각의 매장별로 사용자들이 선택한 난이도의 비율을 구한 후 쉽다고 생각한 유저들의 비율 값을 뽑아 매장들의 순위를 표시했습니다
  
매장들의 난이도 비율을 뽑아내기 위해 난이도와 매장을 그룹으로 묶은 후 PATIO_TO_REPORT를 통해 난이도의 비율을 구했고 PARTITION으로 매장을 한 번 더 묶어 매장별 난이도 비율 값을 뽑았습니다
  
마지막으로 쉽다고 투표한 비율을 뽑아내어 오름차순으로 정렬했습니다

## 황민영

