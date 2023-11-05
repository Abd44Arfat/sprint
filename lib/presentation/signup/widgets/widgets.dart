import 'package:actvex/core/resources/localization/app_localizations_setup.dart';
import 'package:actvex/core/resources/text/styles_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/components/widgets/or_divider_widget.dart';
import '../../../core/resources/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/components/widgets/default_text_form_field.dart';
import '../../../../core/common/components/widgets/loading_button.dart';
import '../../../../core/common/components/widgets/simple_toast.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/common/components/widgets/my_text.dart';
import '../../../core/resources/assets_manager.dart';
import '../cubit/signup_cubit.dart';

part 'signup_title.dart';
part 'signup_body.dart';
part 'signup_already_have_account.dart';
part 'signup_button.dart';
// part 'signup_form_fields.dart';
part 'social_media_signup.dart';
