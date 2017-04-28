class HomeController < ApplicationController
    def index

    end
    
    def intro
        arr_who=["'영대 아이유' 지혜누나와", "옆에 있는 친구와", "오늘 처음 본 여자와", "오늘 처음 본 남자와", "풋풋한 신입생과", "늙다리 복학생과", "지도교수님과"]
        arr_where=["꿈에서", "학교에서", "도서관에서", "술집에서", "버스 안에서", "집에서", "시내 한 가운데서"]
        arr_do=["공부를 한다.", "잠을 잔다.", "말을 탄다.", "춤을 춘다.", "노래를 부른다.", "술을 마신다.", "데이트를 한다.", "싸운다."]
                
            
        @arr_who =arr_who.sample(1)
        @arr_where=arr_where.sample(1)
        @arr_do=arr_do.sample(1)

        
        @index_who=arr_who.index(@arr_who[0])
        @index_where=arr_where.index(@arr_where[0])
        @index_do=arr_do.index(@arr_do[0])
             
        @data=params[:name]
    end
end
