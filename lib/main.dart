import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:clarch/config/routes/routes.dart';
import 'package:clarch/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:clarch/features/daily_news/presentation/pages/home/daily_news.dart';
import 'features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'injection_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const DailyNews(),
      ),
    );
  }
}
