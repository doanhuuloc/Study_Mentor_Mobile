// class HomeState {
//   const HomeState({
//     this.mainResponse = const [],
//     this.bestContentResponse = const [],
//     this.onlineMagazineResponse = const [],
//     this.bestReviewResponse = const [],
//     this.sgmNewsResponse = const [],
//     this.loadingMain = false,
//     this.loadingBestContent = false,
//     this.loadingOnlineMagazine = false,
//     this.loadingBestReview = false,
//     this.loadingSgmNews = false,
//   });

//   final List<PostResponse> mainResponse;
//   final List<PostResponse> bestContentResponse;
//   final List<PostResponse> onlineMagazineResponse;
//   final List<PostResponse> bestReviewResponse;
//   final List<PostResponse> sgmNewsResponse;

//   final bool loadingMain;
//   final bool loadingBestContent;
//   final bool loadingOnlineMagazine;
//   final bool loadingBestReview;
//   final bool loadingSgmNews;

//   HomeState copyWith({
//     List<PostResponse>? mainResponse,
//     List<PostResponse>? bestContentResponse,
//     List<PostResponse>? onlineMagazineResponse,
//     List<PostResponse>? bestReviewResponse,
//     List<PostResponse>? sgmNewsResponse,
//     bool? loadingMain,
//     bool? loadingBestContent,
//     bool? loadingOnlineMagazine,
//     bool? loadingBestReview,
//     bool? loadingSgmNews,
//   }) {
//     return HomeState(
//       mainResponse: mainResponse ?? this.mainResponse,
//       bestContentResponse: bestContentResponse ?? this.bestContentResponse,
//       onlineMagazineResponse:
//           onlineMagazineResponse ?? this.onlineMagazineResponse,
//       bestReviewResponse: bestReviewResponse ?? this.bestReviewResponse,
//       sgmNewsResponse: sgmNewsResponse ?? this.sgmNewsResponse,
//       loadingMain: loadingMain ?? this.loadingMain,
//       loadingBestContent: loadingBestContent ?? this.loadingBestContent,
//       loadingOnlineMagazine:
//           loadingOnlineMagazine ?? this.loadingOnlineMagazine,
//       loadingBestReview: loadingBestReview ?? this.loadingBestReview,
//       loadingSgmNews: loadingSgmNews ?? this.loadingSgmNews,
//     );
//   }
// }
