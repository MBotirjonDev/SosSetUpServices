import 'package:flutter/material.dart';
import 'package:sossetupservice/core/widgets/cubit_bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:sossetupservice/cubit/screens/about/about_info_view.dart';
import 'package:sossetupservice/cubit/screens/auth/auth_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/basket/basket_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/forgot_password/forgot_password_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/avi_bilet_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/chat/chat_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/job/job_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/paynet/paynet_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/pochta/pochta_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/pul_yuborish/pul_yuboridh_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/shop/shop_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/tolovlar/tolovlar_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/visa/visa_support_view.dart';
import 'package:sossetupservice/cubit/screens/history/history_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/home/home_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/notifications/notification_view.dart';
import 'package:sossetupservice/cubit/screens/profile/profile_view_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/register_view_cubit.dart';

class RouteManager {
  static generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/register":
        return MaterialPageRoute(
          builder: (context) => const RegisterViewCubit(),
        );
      case "/bottom":
        return MaterialPageRoute(
          builder: (context) => const BottomNavBarView(),
        );
      case "/auth":
        return MaterialPageRoute(
          builder: (context) =>  AuthViewCubit(),
        );
      case "/forgot":
        return MaterialPageRoute(
          builder: (context) => const ForgotPasswordViewCubit(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (context) =>   HomeViewCubit(),
        );
      case "/basket":
        return MaterialPageRoute(
          builder: (context) => const BasketViewCubit(),
        );
      case "/history":
        return MaterialPageRoute(
          builder: (context) => const HistoryViewCubit(),
        );
      case "/profile":
        return MaterialPageRoute(
          builder: (context) => const ProfileViewCubit(),
        );
      case "/notification":
        return MaterialPageRoute(
          builder: (context) => const NotificationViewCubit(),
        );
      case "/about":
        return MaterialPageRoute(
          builder: (context) => const AboutInfoViewCubit(),
        );
         case "/shop":
        return MaterialPageRoute(
          builder: (context) =>  ShopViewCubit(),
        );
         case "/transferMoney":
        return MaterialPageRoute(
          builder: (context) => const TrasferMoneyViewCubit(),
        );
        case "/paynet":
        return MaterialPageRoute(
          builder: (context) => const PaynetViewCubit(),
        );
        case "/avi":
        return MaterialPageRoute(
          builder: (context) => const AviTicketViewCubit(),
        );
        case "/email":
        return MaterialPageRoute(
          builder: (context) => const EmailViewCubit(),
        );
         case "/tolov":
        return MaterialPageRoute(
          builder: (context) => const TolovlarViewCubit(),
        );
         case "/visa":
        return MaterialPageRoute(
          builder: (context) => const VisaSupportViewCubit(),
        );
         case "/job":
        return MaterialPageRoute(
          builder: (context) => const JobViewCubit(),
        );
         case "/chat":
        return MaterialPageRoute(
          builder: (context) => const ChatViewCubit(),
        );
    }
  }
}
