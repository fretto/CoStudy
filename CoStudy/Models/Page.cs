namespace CoStudy.Models
{
    public class Page
    {

        public int TotalItems { get; set; }// total number or items
        public int CurrentPage { get; set; }//active page of the pager bar
        public int PageSize { get; set; }//number of records displayed in one page
        public int TotalPages { get; set; }//totall number of pages in the pages bar
        public int StartPage { get; set; }
        public int EndPage { get; set; } 



        public Page() { }   


        public Page(int totalItems, int page,int pageSize=10)
        {
         
            int totalPages=(int) Math.Ceiling((decimal)totalItems/(decimal)pageSize);
            int currentPage = page;

            int startPage=currentPage-5;
            int endPage=currentPage+4;

            if (startPage <= 0)
            {


                endPage=endPage-(startPage-1);
                startPage=1;
            }
            if(endPage>totalPages)
            {

                endPage = totalPages;
                if (endPage > 10)
                {
                    startPage = endPage - 9;
                }


            }
            TotalItems = totalItems;
            CurrentPage = currentPage;
            PageSize= pageSize;
            TotalPages = totalPages;
            StartPage = startPage;
            EndPage = endPage;

        }
    }
}
