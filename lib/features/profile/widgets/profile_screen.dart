// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:grocery_app/core/common/app_routes.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/injection.dart';
import '../../../core/ui/common/grocery_app_bar.dart';
import '../../../generated/l10n.dart';
import '../bloc/profile_bloc.dart';
import '../bloc/profile_view_state.dart';

part './content/profile_screen_authorized.dart';
part './content/profile_screen_nonauthorized.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                nonAuthorized: () => _ProfileScreenNonAuthorized(),
                authorized: (data) => _ProfileScreenAuthorized(
                  state: data,
                ),
              )),
    );
  }
}
