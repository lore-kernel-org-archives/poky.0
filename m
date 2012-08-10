Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E983CE013B2
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 22:44:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2012 22:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,744,1336374000"; d="scan'208";a="132290245"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Aug 2012 22:44:41 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 9 Aug 2012 22:44:41 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.159]) with mapi id
	14.01.0355.002; Thu, 9 Aug 2012 22:44:41 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] Hob wizard-like reorganization
Thread-Index: AQHNdYQmRY2xVDZ+JkmCcsBc4jRBSJdQf49AgAEDgACAAGqD8IAA/TQA//+SLeCAAH/LgP//jmow
Date: Fri, 10 Aug 2012 05:44:40 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ACEA1F@ORSMSX101.amr.corp.intel.com>
References: <1344443835-15436-1-git-send-email-cristian.iorga@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46ACDF7B@ORSMSX101.amr.corp.intel.com>
	<969F26A8BAB325438E7EB80D3C3134FB1617A577@IRSMSX102.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46ACE6CE@ORSMSX101.amr.corp.intel.com>
	<969F26A8BAB325438E7EB80D3C3134FB1617AB1D@IRSMSX102.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46ACEA07@ORSMSX101.amr.corp.intel.com>
	<969F26A8BAB325438E7EB80D3C3134FB1617ABA1@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1617ABA1@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Hob wizard-like reorganization
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Aug 2012 05:44:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Agree'd.

-----Original Message-----
From: Iorga, Cristian
Sent: Thursday, August 09, 2012 10:30 PM
To: Zhang, Jessica; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

Hello Jessica,

I see your point also :-).
I honestly don't know what to say, but maybe it is OK to leave it as it is =
for now.
It can be removed later on, if the usage pattern from the users will signal=
 that it is no longer needed.
At the moment, it is a quick option.

Please advise.

Thanks,
Cristian

-----Original Message-----
From: Zhang, Jessica
Sent: Friday, August 10, 2012 8:22 AM
To: Iorga, Cristian; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

Hi Cristian,

I see your point.  But you also brought up a very interesting scenario.  I =
thought with the change that you're implementing based on Belen's new desig=
n, we try to streamline the process in 2 clear path:
1. Just pick a predefined image and build image 2. Edit image and go throug=
h the 2 steps linear path as your implementation to achieve customization

But you mentioned that seems we still allow user to access the edit package=
 in the build details pages, which in my mind should be eliminated.

-----Original Message-----
From: Iorga, Cristian
Sent: Thursday, August 09, 2012 9:26 PM
To: Zhang, Jessica; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

Hello Jessica,

I can do it this way, and in fact I did had a variant implementation with S=
tep 1 of 2, etc, but, there is small issue with that.
In the case of the following scenario:
1. Start a build of quemux86, with core-image-sato as a target (no editing,=
 straight build from the "Image configuration" page) 2. In the build detail=
s page, go to "Edit packages" page.
3. The Edit Packages page starts, and it will show like this: "Step 2 of 2:=
 Edit Packages", which would be confusing, since there is no "Step 1 of 2".

One possible solution would be to modify dynamically the title of the "Edit=
 packages" page, based on the context (scenario).
Disadvantages:
1. The technical solution is not simple to implement, due to limitations of=
 PyGTK.
2. At least myself, from a workflow/design perspective, I will find it conf=
using to have the same page with two titles.

Please advise.

Thanks,
Cristian

-----Original Message-----
From: Zhang, Jessica
Sent: Thursday, August 09, 2012 11:55 PM
To: Iorga, Cristian; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

OK,  I see it now and after going through the context of 2165 again, the on=
ly comments I have as to your patch is can you add the step 1 of 2 and step=
 2 of 2 as in Belen's design, since it's much clearer IMO that this is a mu=
lti-step process for customize an image.

Thanks,
Jessica

-----Original Message-----
From: Iorga, Cristian
Sent: Wednesday, August 08, 2012 11:58 PM
To: Zhang, Jessica; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

Hi Jessica,

Can you please detail the steps that lead to the situation described by you=
?
Also, there is a button called "Build Packages" in "Edit recipes" page, tha=
t will lead you to "Edit packages" page.
See Bug #2165 details for the reorganization of Hob.

-----Original Message-----
From: Zhang, Jessica
Sent: Thursday, August 09, 2012 1:31 AM
To: Iorga, Cristian; poky@yoctoproject.org
Subject: RE: [poky] [PATCH] Hob wizard-like reorganization

Hi Cristian,

Seems we no longer able to select packages, the edit image always brings me=
 to the recipe selection page...

Thanks,
Jessica

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Cristian Iorga
Sent: Wednesday, August 08, 2012 9:37 AM
To: poky@yoctoproject.org
Subject: [poky] [PATCH] Hob wizard-like reorganization

Hob is now more context-sensitive regarding user changes/options. Also, the=
 workflow have been streamlined and resembles more of a wizard.
Beautified some hardcoded values.
Fixed typo.
New streamlined Image Configuration page.
Build and/or Edit image buttons presence is context sensitive.
Recipes and packages tabs selected automatically based on custom image or p=
re-defined target image (included or all).
Context sensitive Back button.

Fixes [YOCTO 2165]

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
---
 bitbake/lib/bb/ui/crumbs/builddetailspage.py       |    2 +-
 bitbake/lib/bb/ui/crumbs/builder.py                |   23 +++++--
 bitbake/lib/bb/ui/crumbs/hoblistmodel.py           |    5 +-
 bitbake/lib/bb/ui/crumbs/imageconfigurationpage.py |   68 +++++++---------=
----
 bitbake/lib/bb/ui/crumbs/packageselectionpage.py   |   16 +++--
 bitbake/lib/bb/ui/crumbs/recipeselectionpage.py    |   15 +++--
 6 files changed, 69 insertions(+), 60 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/builddetailspage.py b/bitbake/lib/bb/=
ui/crumbs/builddetailspage.py
index 30eab29..4d2d947 100755
--- a/bitbake/lib/bb/ui/crumbs/builddetailspage.py
+++ b/bitbake/lib/bb/ui/crumbs/builddetailspage.py
@@ -165,7 +165,7 @@ class BuildDetailsPage (HobPage):
         self.builder.handler.build.model.connect_after("row-changed", self=
.scroll_to_present_row, self.scrolled_view_build.get_vadjustment(), self.bu=
ild_tv)

         self.button_box =3D gtk.HBox(False, 6)
-        self.back_button =3D HobAltButton("<< Back to image configuration"=
)
+        self.back_button =3D HobAltButton('<< Back')
         self.back_button.connect("clicked", self.back_button_clicked_cb)
         self.button_box.pack_start(self.back_button, expand=3DFalse, fill=
=3DFalse)

diff --git a/bitbake/lib/bb/ui/crumbs/builder.py b/bitbake/lib/bb/ui/crumbs=
/builder.py
index cb2338e..dd7ebe1 100755
--- a/bitbake/lib/bb/ui/crumbs/builder.py
+++ b/bitbake/lib/bb/ui/crumbs/builder.py
@@ -41,7 +41,7 @@ from bb.ui.crumbs.hig import CrumbsMessageDialog, ImageSe=
lectionDialog, \  from bb.ui.crumbs.persistenttooltip import PersistentTool=
tip  import bb.ui.crumbs.utils

-hobVer =3D 20120530
+hobVer =3D 20120808

 class Configuration:
     '''Represents the data structure of configuration.'''
@@ -640,16 +640,28 @@ class Builder(gtk.Window):
             self.image_configuration_page.show_baseimg_selected()

         elif next_step =3D=3D self.RECIPE_SELECTION:
-            pass
+            if self.recipe_model.get_selected_image() =3D=3D self.recipe_m=
odel.__custom_image__:
+                self.recipe_details_page.set_recipe_curr_tab(self.recipe_d=
etails_page.ALL)
+            else:
+
+ self.recipe_details_page.set_recipe_curr_tab(self.recipe_details_page.
+ INCLUDED)

         elif next_step =3D=3D self.PACKAGE_SELECTION:
+            if self.recipe_model.get_selected_image() =3D=3D self.recipe_m=
odel.__custom_image__:
+                self.package_details_page.set_packages_curr_tab(self.packa=
ge_details_page.ALL)
+            else:
+
+ self.package_details_page.set_packages_curr_tab(self.package_details_p
+ age.INCLUDED)
             self.package_details_page.show_page(self.current_logfile)

+
         elif next_step =3D=3D self.PACKAGE_GENERATING or next_step =3D=3D =
self.FAST_IMAGE_GENERATING:
-            # both PACKAGE_GENEATING and FAST_IMAGE_GENERATING share the s=
ame page
+            # both PACKAGE_GENERATING and FAST_IMAGE_GENERATING share
+ the same page
             self.build_details_page.show_page(next_step)

         elif next_step =3D=3D self.PACKAGE_GENERATED:
+            if self.recipe_model.get_selected_image() =3D=3D self.recipe_m=
odel.__custom_image__:
+                self.package_details_page.set_packages_curr_tab(self.packa=
ge_details_page.ALL)
+            else:
+
+ self.package_details_page.set_packages_curr_tab(self.package_details_p
+ age.INCLUDED)
             self.package_details_page.show_page(self.current_logfile)

         elif next_step =3D=3D self.IMAGE_GENERATING:
@@ -781,8 +793,6 @@ class Builder(gtk.Window):
         self.image_configuration_page.layer_button.set_sensitive(sensitive=
)
         self.image_configuration_page.layer_info_icon.set_sensitive(sensit=
ive)
         self.image_configuration_page.toolbar.set_sensitive(sensitive)
-        self.image_configuration_page.view_recipes_button.set_sensitive(se=
nsitive)
-        self.image_configuration_page.view_packages_button.set_sensitive(s=
ensitive)
         self.image_configuration_page.config_build_button.set_sensitive(se=
nsitive)

         self.recipe_details_page.set_sensitive(sensitive)
@@ -1270,6 +1280,9 @@ class Builder(gtk.Window):
     def show_recipes(self):
         self.switch_page(self.RECIPE_SELECTION)

+    def show_image_details(self):
+        self.switch_page(self.IMAGE_GENERATED)
+
     def show_configuration(self):
         self.switch_page(self.BASEIMG_SELECTED)

diff --git a/bitbake/lib/bb/ui/crumbs/hoblistmodel.py b/bitbake/lib/bb/ui/c=
rumbs/hoblistmodel.py
index 37cee78..3de9e5b 100644
--- a/bitbake/lib/bb/ui/crumbs/hoblistmodel.py
+++ b/bitbake/lib/bb/ui/crumbs/hoblistmodel.py
@@ -566,9 +566,8 @@ class RecipeListModel(gtk.ListStore):

         # dummy image for prompt
         self.set(self.append(), self.COL_NAME, self.__custom_image__,
-                 self.COL_DESC, "Use the 'View recipes' and 'View packages=
' " \
-                                "options to select what you want to includ=
e " \
-                                "in your image.",
+                 self.COL_DESC, "Use 'Edit image' to customize recipes and=
 packages " \
+                                "to be included in your image ",
                  self.COL_LIC, "", self.COL_GROUP, "",
                  self.COL_DEPS, "", self.COL_BINB, "",
                  self.COL_TYPE, "image", self.COL_INC, False, diff --git a=
/bitbake/lib/bb/ui/crumbs/imageconfigurationpage.py b/bitbake/lib/bb/ui/cru=
mbs/imageconfigurationpage.py
index 80332fe..6aeb6dc 100644
--- a/bitbake/lib/bb/ui/crumbs/imageconfigurationpage.py
+++ b/bitbake/lib/bb/ui/crumbs/imageconfigurationpage.py
@@ -135,8 +135,10 @@ class ImageConfigurationPage (HobPage):
         self._pack_components(pack_config_build_button =3D True)
         self.set_config_machine_layout(show_progress_bar =3D False)
         self.set_config_baseimg_layout()
-        self.set_rcppkg_layout()
         self.show_all()
+        if self.builder.recipe_model.get_selected_image() =3D=3D self.buil=
der.recipe_model.__custom_image__:
+            self.just_bake_button.hide()
+            self.or_label.hide()

     def create_config_machine(self):
         self.machine_title =3D gtk.Label() @@ -207,22 +209,6 @@ class Imag=
eConfigurationPage (HobPage):
         self.image_desc.set_justify(gtk.JUSTIFY_LEFT)
         self.image_desc.set_line_wrap(True)

-        # button to view recipes
-        icon_file =3D hic.ICON_RCIPE_DISPLAY_FILE
-        hover_file =3D hic.ICON_RCIPE_HOVER_FILE
-        self.view_recipes_button =3D HobImageButton("View recipes",
-                                        "Add/remove recipes and tasks",
-                                        icon_file, hover_file)
-        self.view_recipes_button.connect("clicked", self.view_recipes_butt=
on_clicked_cb)
-
-        # button to view packages
-        icon_file =3D hic.ICON_PACKAGES_DISPLAY_FILE
-        hover_file =3D hic.ICON_PACKAGES_HOVER_FILE
-        self.view_packages_button =3D HobImageButton("View packages",
-                                        "Add/remove previously built packa=
ges",
-                                        icon_file, hover_file)
-        self.view_packages_button.connect("clicked", self.view_packages_bu=
tton_clicked_cb)
-
         self.image_separator =3D gtk.HSeparator()

     def set_config_baseimg_layout(self):
@@ -232,29 +218,27 @@ class ImageConfigurationPage (HobPage):
         self.gtable.attach(self.image_desc, 13, 38, 23, 28)
         self.gtable.attach(self.image_separator, 0, 40, 35, 36)

-    def set_rcppkg_layout(self):
-        self.gtable.attach(self.view_recipes_button, 0, 20, 28, 33)
-        self.gtable.attach(self.view_packages_button, 20, 40, 28, 33)
-
     def create_config_build_button(self):
         # Create the "Build packages" and "Build image" buttons at the bot=
tom
         button_box =3D gtk.HBox(False, 6)

         # create button "Build image"
-        just_bake_button =3D HobButton("Build image")
-        just_bake_button.set_size_request(205, 49)
-        just_bake_button.set_tooltip_text("Build target image")
-        just_bake_button.connect("clicked", self.just_bake_button_clicked_=
cb)
-        button_box.pack_end(just_bake_button, expand=3DFalse, fill=3DFalse=
)
-
-        label =3D gtk.Label(" or ")
-        button_box.pack_end(label, expand=3DFalse, fill=3DFalse)
-
-        # create button "Build Packages"
-        build_packages_button =3D HobAltButton("Build packages")
-        build_packages_button.connect("clicked", self.build_packages_butto=
n_clicked_cb)
-        build_packages_button.set_tooltip_text("Build recipes into package=
s")
-        button_box.pack_end(build_packages_button, expand=3DFalse, fill=3D=
False)
+        self.just_bake_button =3D HobButton("Build image")
+        self.just_bake_button.set_size_request(205, 49)
+        self.just_bake_button.set_tooltip_text("Build target image")
+        self.just_bake_button.connect("clicked", self.just_bake_button_cli=
cked_cb)
+        button_box.pack_end(self.just_bake_button, expand=3DFalse,
+ fill=3DFalse)
+
+        # create separator label
+        self.or_label =3D gtk.Label(" or ")
+        button_box.pack_end(self.or_label, expand=3DFalse, fill=3DFalse)
+
+        # create button "Edit Image"
+        self.edit_image_button =3D HobButton("Edit image")
+        self.edit_image_button.set_size_request(205, 49)
+        self.edit_image_button.set_tooltip_text("Edit target image")
+        self.edit_image_button.connect("clicked", self.edit_image_button_c=
licked_cb)
+        button_box.pack_end(self.edit_image_button, expand=3DFalse,
+ fill=3DFalse)

         return button_box

@@ -347,6 +331,10 @@ class ImageConfigurationPage (HobPage):

         self.show_baseimg_selected()

+        if selected_image =3D=3D self.builder.recipe_model.__custom_image_=
_:
+            self.just_bake_button.hide()
+            self.or_label.hide()
+
         glib.idle_add(self.image_combo_changed_idle_cb, selected_image, se=
lected_recipes, selected_packages)

     def _image_combo_connect_signal(self):
@@ -426,17 +414,11 @@ class ImageConfigurationPage (HobPage):
         # Create a layer selection dialog
         self.builder.show_layer_selection_dialog()

-    def view_recipes_button_clicked_cb(self, button):
-        self.builder.show_recipes()
-
-    def view_packages_button_clicked_cb(self, button):
-        self.builder.show_packages()
-
     def just_bake_button_clicked_cb(self, button):
         self.builder.just_bake()

-    def build_packages_button_clicked_cb(self, button):
-        self.builder.build_packages()
+    def edit_image_button_clicked_cb(self, button):
+        self.builder.show_recipes()

     def template_button_clicked_cb(self, button):
         response, path =3D self.builder.show_load_template_dialog()
diff --git a/bitbake/lib/bb/ui/crumbs/packageselectionpage.py b/bitbake/lib=
/bb/ui/crumbs/packageselectionpage.py
index d101535..3576ed5 100755
--- a/bitbake/lib/bb/ui/crumbs/packageselectionpage.py
+++ b/bitbake/lib/bb/ui/crumbs/packageselectionpage.py
@@ -98,9 +98,12 @@ class PackageSelectionPage (HobPage):
                       }]
         }
     ]
+
+    (INCLUDED,
+     ALL) =3D range(2)

     def __init__(self, builder):
-        super(PackageSelectionPage, self).__init__(builder, "Packages")
+        super(PackageSelectionPage, self).__init__(builder, "Edit
+ packages")

         # set invisiable members
         self.recipe_model =3D self.builder.recipe_model @@ -110,7 +113,7 @=
@ class PackageSelectionPage (HobPage):
         self.create_visual_elements()

     def included_clicked_cb(self, button):
-        self.ins.set_current_page(0)
+        self.ins.set_current_page(self.INCLUDED)

     def create_visual_elements(self):
         self.label =3D gtk.Label("Packages included: 0\nSelected packages =
size: 0 MB") @@ -154,7 +157,7 @@ class PackageSelectionPage (HobPage):
         self.build_image_button.connect("clicked", self.build_image_clicke=
d_cb)
         self.button_box.pack_end(self.build_image_button, expand=3DFalse, =
fill=3DFalse)

-        self.back_button =3D HobAltButton("<< Back to image configuration"=
)
+        self.back_button =3D HobAltButton('<< Back')
         self.back_button.connect("clicked", self.back_button_clicked_cb)
         self.button_box.pack_start(self.back_button, expand=3DFalse, fill=
=3DFalse)

@@ -189,7 +192,10 @@ class PackageSelectionPage (HobPage):
         self.builder.build_image()

     def back_button_clicked_cb(self, button):
-        self.builder.show_configuration()
+        if self.builder.current_step =3D=3D  self.builder.PACKAGE_GENERATE=
D:
+            self.builder.show_recipes()
+        elif self.builder.previous_step =3D=3D  self.builder.IMAGE_GENERAT=
ED:
+            self.builder.show_image_details()

     def _expand_all(self):
         for tab in self.tables:
@@ -294,3 +300,5 @@ class PackageSelectionPage (HobPage):
             child_path =3D self.package_model.convert_vpath_to_path(model,=
 paths[0])
             self.package_model.foreach(self.foreach_cell_change_font, chil=
d_path)

+    def set_packages_curr_tab(self, curr_page):
+        self.ins.set_current_page(curr_page)
diff --git a/bitbake/lib/bb/ui/crumbs/recipeselectionpage.py b/bitbake/lib/=
bb/ui/crumbs/recipeselectionpage.py
index af68f2a..d8e71b0 100755
--- a/bitbake/lib/bb/ui/crumbs/recipeselectionpage.py
+++ b/bitbake/lib/bb/ui/crumbs/recipeselectionpage.py
@@ -124,18 +124,22 @@ class RecipeSelectionPage (HobPage):
                       }]
         }
     ]
+
+    (INCLUDED,
+     ALL,
+     TASKS) =3D range(3)

     def __init__(self, builder =3D None):
-        super(RecipeSelectionPage, self).__init__(builder, "Recipes")
+        super(RecipeSelectionPage, self).__init__(builder, "Edit
+ recipes")

-        # set invisiable members
+        # set invisible members
         self.recipe_model =3D self.builder.recipe_model

         # create visual elements
         self.create_visual_elements()

     def included_clicked_cb(self, button):
-        self.ins.set_current_page(0)
+        self.ins.set_current_page(self.INCLUDED)

     def create_visual_elements(self):
         self.eventbox =3D self.add_onto_top_bar(None, 73) @@ -180,7 +184,7=
 @@ class RecipeSelectionPage (HobPage):
         self.build_packages_button.connect("clicked", self.build_packages_=
clicked_cb)
         button_box.pack_end(self.build_packages_button, expand=3DFalse, fi=
ll=3DFalse)

-        self.back_button =3D HobAltButton("<< Back to image configuration"=
)
+        self.back_button =3D HobAltButton('<< Back')
         self.back_button.connect("clicked", self.back_button_clicked_cb)
         button_box.pack_start(self.back_button, expand=3DFalse, fill=3DFal=
se)

@@ -261,3 +265,6 @@ class RecipeSelectionPage (HobPage):

     def after_fadeout_checkin_include(self, table, ctrl, cell, tree):
         tree.set_model(self.recipe_model.tree_model(self.pages[0]['filter'=
]))
+
+    def set_recipe_curr_tab(self, curr_page):
+        self.ins.set_current_page(curr_page)
--
1.7.9.5

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

