import 'package:cake_wallet/di.dart';
import 'package:cake_wallet/entities/main_actions.dart';
import 'package:cake_wallet/src/screens/dashboard/desktop_widgets/desktop_action_button.dart';
import 'package:cake_wallet/src/screens/dashboard/pages/cake_features_page.dart';
import 'package:cake_wallet/view_model/dashboard/dashboard_view_model.dart';
import 'package:cake_wallet/view_model/dashboard/cake_features_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DesktopDashboardActions extends StatelessWidget {
  final DashboardViewModel dashboardViewModel;

  const DesktopDashboardActions(this.dashboardViewModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Observer(
        builder: (_) {
          return SingleChildScrollView( // 添加滚动支持
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 对齐方式优化
              children: [
                const SizedBox(height: 16),
                DesktopActionButton(
                  title: MainActions.exchangeAction.name(context),
                  image: MainActions.exchangeAction.image,
                  canShow: MainActions.exchangeAction.canShow?.call(dashboardViewModel),
                  isEnabled: MainActions.exchangeAction.isEnabled?.call(dashboardViewModel),
                  onTap: () async => await MainActions.exchangeAction.onTap(context, dashboardViewModel),
                ),
                Row(
                  children: [
                    Expanded(
                      child: DesktopActionButton(
                        title: MainActions.receiveAction.name(context),
                        image: MainActions.receiveAction.image,
                        canShow: MainActions.receiveAction.canShow?.call(dashboardViewModel),
                        isEnabled: MainActions.receiveAction.isEnabled?.call(dashboardViewModel),
                        onTap: () async =>
                            await MainActions.receiveAction.onTap(context, dashboardViewModel),
                      ),
                    ),
                    Expanded(
                      child: DesktopActionButton(
                        title: MainActions.sendAction.name(context),
                        image: MainActions.sendAction.image,
                        canShow: MainActions.sendAction.canShow?.call(dashboardViewModel),
                        isEnabled: MainActions.sendAction.isEnabled?.call(dashboardViewModel),
                        onTap: () async => await MainActions.sendAction.onTap(context, dashboardViewModel),
                      ),
                    ),
<<<<<<< HEAD
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: DesktopActionButton(
                        title: MainActions.buyAction.name(context),
                        image: MainActions.buyAction.image,
                        canShow: MainActions.buyAction.canShow?.call(dashboardViewModel),
                        isEnabled: MainActions.buyAction.isEnabled?.call(dashboardViewModel),
                        onTap: () async => await MainActions.buyAction.onTap(context, dashboardViewModel),
                      ),
                    ),
                    Expanded(
                      child: DesktopActionButton(
                        title: MainActions.sellAction.name(context),
                        image: MainActions.sellAction.image,
                        canShow: MainActions.sellAction.canShow?.call(dashboardViewModel),
                        isEnabled: MainActions.sellAction.isEnabled?.call(dashboardViewModel),
                        onTap: () async => await MainActions.sellAction.onTap(context, dashboardViewModel),
                      ),
=======
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: DesktopActionButton(
                      title: MainActions.tradeAction.name(context),
                      image: MainActions.tradeAction.image,
                      canShow: MainActions.tradeAction.canShow?.call(dashboardViewModel),
                      isEnabled: MainActions.tradeAction.isEnabled?.call(dashboardViewModel),
                      onTap: () async => await MainActions.tradeAction.onTap(context, dashboardViewModel),
>>>>>>> dcd978eb38f370fce975d23517d73aa4728df0f3
                    ),
                  ],
                ),
                const SizedBox(height: 16), // 增加一些间距，避免底部内容紧贴
                SizedBox( // 限定高度，避免无限扩展
                  height: 300, // 这里可以调整高度，避免溢出
                  child: CakeFeaturesPage(
                    dashboardViewModel: dashboardViewModel,
                    cakeFeaturesViewModel: getIt.get<CakeFeaturesViewModel>(),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}


// class DesktopDashboardActions extends StatelessWidget {
//   final DashboardViewModel dashboardViewModel;

//   const DesktopDashboardActions(this.dashboardViewModel, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Theme.of(context).colorScheme.background,
//       child: Observer(
//         builder: (_) {
//           return Column(
//             children: [
//               const SizedBox(height: 16),
//               DesktopActionButton(
//                 title: MainActions.exchangeAction.name(context),
//                 image: MainActions.exchangeAction.image,
//                 canShow: MainActions.exchangeAction.canShow?.call(dashboardViewModel),
//                 isEnabled: MainActions.exchangeAction.isEnabled?.call(dashboardViewModel),
//                 onTap: () async => await MainActions.exchangeAction.onTap(context, dashboardViewModel),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: DesktopActionButton(
//                       title: MainActions.receiveAction.name(context),
//                       image: MainActions.receiveAction.image,
//                       canShow: MainActions.receiveAction.canShow?.call(dashboardViewModel),
//                       isEnabled: MainActions.receiveAction.isEnabled?.call(dashboardViewModel),
//                       onTap: () async =>
//                           await MainActions.receiveAction.onTap(context, dashboardViewModel),
//                     ),
//                   ),
//                   Expanded(
//                     child: DesktopActionButton(
//                       title: MainActions.sendAction.name(context),
//                       image: MainActions.sendAction.image,
//                       canShow: MainActions.sendAction.canShow?.call(dashboardViewModel),
//                       isEnabled: MainActions.sendAction.isEnabled?.call(dashboardViewModel),
//                       onTap: () async => await MainActions.sendAction.onTap(context, dashboardViewModel),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: DesktopActionButton(
//                       title: MainActions.buyAction.name(context),
//                       image: MainActions.buyAction.image,
//                       canShow: MainActions.buyAction.canShow?.call(dashboardViewModel),
//                       isEnabled: MainActions.buyAction.isEnabled?.call(dashboardViewModel),
//                       onTap: () async => await MainActions.buyAction.onTap(context, dashboardViewModel),
//                     ),
//                   ),
//                   Expanded(
//                     child: DesktopActionButton(
//                       title: MainActions.sellAction.name(context),
//                       image: MainActions.sellAction.image,
//                       canShow: MainActions.sellAction.canShow?.call(dashboardViewModel),
//                       isEnabled: MainActions.sellAction.isEnabled?.call(dashboardViewModel),
//                       onTap: () async => await MainActions.sellAction.onTap(context, dashboardViewModel),
//                     ),
//                   ),
//                 ],
//               ),
//             Expanded(
//               child: CakeFeaturesPage(
//                 dashboardViewModel: dashboardViewModel,
//                 cakeFeaturesViewModel: getIt.get<CakeFeaturesViewModel>(),
//               ),
//             ),
//             ],
//           );
//         }
//       ),
//     );
//   }
// }
