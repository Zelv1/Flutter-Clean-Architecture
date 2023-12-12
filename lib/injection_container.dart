import 'package:clarch/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:clarch/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:clarch/features/daily_news/domain/repository/article_repository.dart';
import 'package:clarch/features/daily_news/domain/usecases/get_article.dart';
import 'package:clarch/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDepentencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));

  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl(), sl()));
  //UseCases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(() => RemoteArticlesBloc(sl()));
}
