
import 'package:amazonprimevideoclone/utils/constants/image_constants.dart';

import 'model/storeMovie.dart';

class DummyDB
{
  // UserName Screen
  static List<Map<String, String>> usersList = [
    {"imagePath" : imageConstants.USER_PNG, "userName" : "Amrutha"},
    {"imagePath" : imageConstants.KIDSUSER_PNG, "userName" : "Kids"},
  ];

  static const List<String> verticalSliderList = [
    "https://i.pinimg.com/236x/af/0a/35/af0a3590dab6aa9f706ebd32abd8f7fd.jpg",
    "https://i.pinimg.com/236x/78/f0/2e/78f02e6a0ae0e2e86316224de52cd8df.jpg",
    "https://i.pinimg.com/236x/40/b1/b9/40b1b9b79148bbf1919aef5fed7fd1cb.jpg",
    "https://i.pinimg.com/236x/cf/c1/09/cfc109de26321ca02ca4e5316b83c4f3.jpg",
    "https://i.pinimg.com/236x/7a/43/58/7a435841f7a35ebb1a813df592022bad.jpg",
    "https://i.pinimg.com/236x/ce/c4/23/cec42338400fd2de5bb3752c254d8337.jpg",
    "https://i.pinimg.com/236x/57/21/30/5721306dfc8e5c2603311c6667d674e1.jpg",
    "https://i.pinimg.com/236x/cf/33/20/cf332084e64c771a6c1e5269d69e2375.jpg",
    "https://i.pinimg.com/236x/ad/be/ff/adbeff790f4b3529352931d8b271ea4d.jpg",
    "https://i.pinimg.com/236x/2b/14/da/2b14da6668dcc8e6456ab0ce9bcf1a5d.jpg",
  ];

  static const List<String> genresList = [
    "Action and adventure", "Anime", "Comedy", "Documentary", "Drama", "Fantasy",
    "Horror", "Kids", "Mystery and Thrillers", "Romance", "Science Fiction"
  ];

  static const List<String> featuredCollectionsList = [
    "Hindi", "English", "Telugu", "Tamil", "Malayalam", "Kannada",
    "Punjabi", "Marathi", "Gujarati", "Bengali"
  ];

  static List<Map<String, String>> bbcKidsList = [
    {"time" : "8 min left", "title" : "Go Jetters"},
    {"time" : "3:22 PM", "title" : "Super Kids"},
    {"time" : "3:30 PM", "title" : "TeleKids"},
    {"time" : "3:55 PM", "title" : "Meh Messy"},
    {"time" : "4:22 PM", "title" : "Hey Duggee"},
    {"time" : "5:20 PM", "title" : "Bluey"},
    {"time" : "6:29 PM", "title" : "Grace"},
  ];

  static List<storeMovie> storeList1 = [
    storeMovie(movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq_0v1Db9desx9LXIdlfTRNqtqvkQYSQF7aw&s",
    subTitle: "subscribe"
    ),
    storeMovie(
      movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSktzH__P_ePrwhUnfF2DHg-MJ9KyP9tWNj3g&s",
      subTitle: "subscribe"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwLN6K0mlQj_K1uLhNmky63eGFYFQek1xxg&s",
        subTitle: "first episode free"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbvHbEA8yHqif2LmoMy55dQqJ3tuWzeaXriA&s",
        subTitle: "subscribe"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0MFhcrJSwf88cR-LZhcXbfRHhTQWhmYQvHw&s",
        subTitle: "first episode free"
    ),

  ];

  static List<storeMovie> storeSpotLightList1 = [
    storeMovie(movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq_0v1Db9desx9LXIdlfTRNqtqvkQYSQF7aw&s",
        subTitle: "Rent"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSktzH__P_ePrwhUnfF2DHg-MJ9KyP9tWNj3g&s",
        subTitle: "Rent"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwLN6K0mlQj_K1uLhNmky63eGFYFQek1xxg&s",
        subTitle: "Rent"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbvHbEA8yHqif2LmoMy55dQqJ3tuWzeaXriA&s",
        subTitle: "Rent"
    ),
    storeMovie(
        movieImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0MFhcrJSwf88cR-LZhcXbfRHhTQWhmYQvHw&s",
        subTitle: "Rent"
    ),

  ];


  static List<String> storeList3 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09a4qDUv3jWmXrVfON7pi3_eeZAW9z8rT9g&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiwO6cW3-V7eLopdT76iC6nD3WzB9r6gUg2g&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYHwa1fD9JBXwswA7dzce7WtqyNBd5yMFFA&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0AEhhRzRNqfs-fFul-6N92kgZb-iDU721XQ&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIE75aWLuLglUwas-Z7QNlmGG_6OaZoFFKcw&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh_ySb1rvJAzebcvcaVwgRzuBdYvPrC1FE4A&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB3p3zutTYEUx88KS86cqs0j1k4YNbegD2jA&s",
 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZFeqtny-frfDB4JwZoZjEgGREHeAhHxK2Xw&s"
  ];

  static List<String> storeList4 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxft58GzZBBTTTAslCyrWV5c9mvz0qpjYkEw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDs8FpT5NCfYrGExUhxya_dTDLxv_r1tfN0Q&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTOcLa1Sj_Ot2nMKa89JNkMXfXjrq4m2lXhw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcFKyxhGaaRG_-eseQ_p4VJAm14oLHt9LOGQ&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGhMdp0JvgpjniKha6kBGF-nieNML45ewdwg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-YT9DWYD39nTtjWSchdzZSt9j7TrAo_z9Kg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuy2LWMR-N4DH33eL3fzBFDKdipFh_omLJmQ&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi50AjwjPED-7tn6riUG9GFGDNvnWox5I-LQ&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0-zBrfekuM3DdJT2ryX9f5fwHVLeVBzmUqA&s"

  ];

  static List<String> storeList5 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnlSVCe1OcAJEDqUOak0sLZ1K4x2YMbeUuiA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0xlX_IQAowTSwzb8jdz0cHxkZRY6eF-bQBA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRAcdBTVP_4iA9fd9iddl9Hq9XrShtRSE4yw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-ncS3RQzsFbFH_HIy8KH5hbo4g0LD13CpYg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3usHKChKSAnIRrSYCVkSMoQp5DO68eRmAmQ&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbrsDi_Kg7c1AYWeLnvkqdBzI_JXSXs6htiA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVzY9o_kJxLjIJU2YcKPlMvc7saf9GxdaIZQ&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqdn-5UdgHZxVPccvAhH6pSuM8f-x-cIB9kg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgk9UndUjb3pQwckzIshumfeZkn8E4TKPNJw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_dlSEphwtzLfaEMqu-VQ_t9lmy5xrkwiGw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJouTAqUQ4b8G8aKG7ngyOn9PGOPswE0vlmQ&s"

  ];

  static List<String> storeList6 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9B3LGexE5YXQ-aWxD2wo62Q6ZlzvyEbPJDw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSvw7fq64gpztZxoKkkLczBxrIkrWsBNFHnA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrwK5uFQiDaX3C22TKQGWTmdrlJS1n8zvrEA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVs2xFMCQ1BaQfuHpHh8DTAi2WmeUPQWXCfg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6zgMD67O7WPQvlDXT-9mRfxr3g963evgxAA&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXLxJThsdUivKIFm0RyX2_5pgR0Rjqtwwyyg&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnyE97F2c-ICR1YU9mtnBw5Wh-658XtJIsVw&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSokkshqrAf_817ptgtZfGtt0O3znu17fhw5Q&s",

"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJp_uvcehbytC7S-6Ktc5JtcLZqUJAELeIw&s"

  ];
}










