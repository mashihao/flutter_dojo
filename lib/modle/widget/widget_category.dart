import 'package:flutter_dojo/common/demo_item.dart';

import 'widget_category_accessibility.dart';
import 'widget_category_animation_motion.dart';
import 'widget_category_app_structure_navigation.dart';
import 'widget_category_assets_image_icon.dart';
import 'widget_category_async.dart';
import 'widget_category_basic.dart';
import 'widget_category_buttons.dart';
import 'widget_category_cupertino.dart';
import 'widget_category_dialogs_alerts_panels.dart';
import 'widget_category_information_displays.dart';
import 'widget_category_input.dart';
import 'widget_category_input_selections.dart';
import 'widget_category_layout.dart';
import 'widget_category_multi_child_layout.dart';
import 'widget_category_painting_effect.dart';
import 'widget_category_routing.dart';
import 'widget_category_scrolling.dart';
import 'widget_category_single_child_layout.dart';
import 'widget_category_styling.dart';
import 'widget_category_text.dart';
import 'widget_category_touch_interactions.dart';

// 获取 widget category 列表
List<DemoItemCategory> buildWidgetCategoryList = [
  accessibility,
  animationAndMotion,
  appStructureNavigation,
  assetsImageIcon,
  async,
  basic,
  buttons,
  cupertino,
  dialogsAlertsPanels,
  informationDisplays,
  input,
  inputSelections,
  layout,
  multiChildLayout,
  paintingEffect,
  routing,
  scrolling,
  singleChildLayout,
  styling,
  text,
  touchInteractions,
];

DemoItemCategory accessibility = DemoItemCategory(
  name: 'Accessibility',
  subName: 'Make your app accessible.',
  icon: 'assets/images/logo.png',
  list: buildAccessibilityDemoItems('lib/category/widgets/accessibility/'),
);

DemoItemCategory animationAndMotion = DemoItemCategory(
  name: 'Animation and motion',
  subName: 'Bring animations to your app.',
  icon: 'assets/images/opacity.png',
  list: buildAnimationMotionDemoItems('lib/category/widgets/animationmotion/'),
);

DemoItemCategory assetsImageIcon = DemoItemCategory(
  name: 'Assets, images, and icon',
  subName: 'Manage assets, display images, and show icons.',
  icon: 'assets/images/icon.png',
  list: buildAssetsImageIconDemoItems('lib/category/widgets/assetsimageicon/'),
);

DemoItemCategory async = DemoItemCategory(
  name: 'Async',
  subName: 'Async patterns to your Flutter application.',
  icon: 'assets/images/logo.png',
  list: buildAsyncDemoItems('lib/category/widgets/async/'),
);

DemoItemCategory basic = DemoItemCategory(
  name: 'Basic',
  subName:
      'Widgets you absolutely need to know before building your first Flutter app.',
  icon: 'assets/images/stack.png',
  list: buildBasicDemoItems('lib/category/widgets/basic/'),
);

DemoItemCategory cupertino = DemoItemCategory(
  name: 'Cupertino',
  subName: 'Flutter widgets implementing the current iOS design language.',
  icon: 'assets/images/cupertino-action-sheet.png',
  list: buildCupertinoDemoItems('lib/category/widgets/cupertino/'),
);

DemoItemCategory input = DemoItemCategory(
  name: 'Input',
  subName:
      'Take user input in addition to input widgets in Material Components and Cupertino.',
  icon: 'assets/images/text.png',
  list: buildInputDemoItems('lib/category/widgets/input/'),
);

DemoItemCategory touchInteractions = DemoItemCategory(
  name: 'Touch interactions',
  subName: 'Respond to touch events and route users to different views.',
  icon: 'assets/images/logo.png',
  list: buildTouchInteractionsDemoItems(
      'lib/category/widgets/touchinteractions/'),
);

DemoItemCategory routing = DemoItemCategory(
  name: 'Routing',
  subName: 'Respond to touch events and route users to different views.',
  icon: 'assets/images/patterns_navigation_drawer.png',
  list: buildRoutingDemoItems('lib/category/widgets/routing/'),
);

DemoItemCategory singleChildLayout = DemoItemCategory(
  name: 'Single-child layout widgets',
  subName:
      'Arrange other widgets columns, rows, grids, and many other layouts.',
  icon: 'assets/images/container.png',
  list: buildSingleChildLayoutDemoItems(
      'lib/category/widgets/singlechildlayout/'),
);

DemoItemCategory multiChildLayout = DemoItemCategory(
  name: 'Multi-child layout',
  subName:
      'Arrange other widgets columns, rows, grids, and many other layouts.',
  icon: 'assets/images/components_grid_lists.png',
  list:
      buildMultiChildLayoutDemoItems('lib/category/widgets/multichildlayout/'),
);

DemoItemCategory appStructureNavigation = DemoItemCategory(
  name: 'App structure and navigation',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/layout_structure_regions_mobile.png',
  list: buildAppStructureNavigationDemoItems(
      'lib/category/widgets/appstructurenavigation/'),
);

DemoItemCategory buttons = DemoItemCategory(
  name: 'Buttons',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/components_buttons_usage2.png',
  list: buildButtonsDemoItems('lib/category/widgets/buttons/'),
);

DemoItemCategory inputSelections = DemoItemCategory(
  name: 'Input and selections',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/components_text_fields.png',
  list: buildInputSelectionsDemoItems('lib/category/widgets/inputselections/'),
);

DemoItemCategory dialogsAlertsPanels = DemoItemCategory(
  name: 'Dialogs, alerts, and panels',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/components_dialogs.png',
  list: buildDialogsAlertsPanelsDemoItems(
      'lib/category/widgets/dialogsalertspanels/'),
);

DemoItemCategory informationDisplays = DemoItemCategory(
  name: 'Information displays',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/components_cards.png',
  list: buildInformationDisplaysDemoItems(
      'lib/category/widgets/informationdisplays/'),
);

DemoItemCategory layout = DemoItemCategory(
  name: 'Layout',
  subName:
      'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
  icon: 'assets/images/materialdesign_introduction.png',
  list: buildLayoutDemoItems('lib/category/widgets/layout/'),
);

DemoItemCategory paintingEffect = DemoItemCategory(
  name: 'Painting and effect',
  subName:
      'These widgets apply visual effects to the children without changing their layout, size, or position.',
  icon: 'assets/images/custompaint.png',
  list: buildPaintingEffectDemoItems('lib/category/widgets/paintingeffect/'),
);

DemoItemCategory scrolling = DemoItemCategory(
  name: 'Scrolling',
  subName: 'Scroll multiple widgets as children of the parent.',
  icon: 'assets/images/listview.png',
  list: buildScrollingDemoItems('lib/category/widgets/scrolling/'),
);

DemoItemCategory styling = DemoItemCategory(
  name: 'Styling',
  subName:
      'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
  icon: 'assets/images/padding.png',
  list: buildStylingDemoItems('lib/category/widgets/styling/'),
);

DemoItemCategory text = DemoItemCategory(
  name: 'Text',
  subName: 'Display and style text.',
  icon: 'assets/images/baseline.png',
  list: buildTextDemoItems('lib/category/widgets/text/'),
);
