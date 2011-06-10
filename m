Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 264974C80AB3
	for <poky@yoctoproject.org>; Fri, 10 Jun 2011 12:30:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jun 2011 10:30:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,348,1304319600"; d="scan'208";a="14879626"
Received: from scimitar.ch.intel.com (HELO [10.34.84.51]) ([10.34.84.51])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2011 10:30:21 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 10 Jun 2011 10:30:23 -0700
In-Reply-To: <3f3af21a2adf8a3737368abc816aac4280a65515.1307691323.git.lianhao.lu@intel.com>
References: <cover.1307691323.git.lianhao.lu@intel.com>
	<3f3af21a2adf8a3737368abc816aac4280a65515.1307691323.git.lianhao.lu@intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-2.fc15) 
Message-ID: <1307727023.8304.2.camel@scimitar>
Mime-Version: 1.0
Subject: Re: [IMAGE_CREATOR 1/1] bitbake/hob: Fixed the "build again" hang.
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
X-List-Received-Date: Fri, 10 Jun 2011 17:30:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-06-10 at 15:40 +0800, Lianhao Lu wrote:
> Using gobject.threads_init() instead of gtk.gdk.threads_init(). These
> two modes are conflict to each other. Using gobject.threads_init()
> allows only the main thread to touch GUI(gtk) part.

Great catch! Thanks for the patch.

I'm going to merge just the hunk which drops the gtk.gdk.threads_init()
(with your SOB, hope that's OK?) into the image-creator branch as I have
changes with similar intent to the other hunks in my WIP tree
(josh/hob).

Thanks again,
Joshua

> 
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> ---
>  bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    3 +++
>  bitbake/lib/bb/ui/hob.py                    |    5 +++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> index c474491..a11e6d4 100644
> --- a/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> +++ b/bitbake/lib/bb/ui/crumbs/hobeventhandler.py
> @@ -134,6 +134,9 @@ class HobHandler(gobject.GObject):
>          self.building = True
>          self.server.runCommand(["buildTargets", targets, "build"])
>  
> +    def notify_building_state(self, building):
> +        self.building = building
> +
>      def cancel_build(self):
>          # Note: this may not be the right way to stop an in-progress build
>          self.server.runCommand(["stateStop"])
> diff --git a/bitbake/lib/bb/ui/hob.py b/bitbake/lib/bb/ui/hob.py
> index ab6022b..46fb563 100644
> --- a/bitbake/lib/bb/ui/hob.py
> +++ b/bitbake/lib/bb/ui/hob.py
> @@ -63,9 +63,11 @@ class MainWindow (gtk.Window):
>  
>      def running_build_failed_cb(self, running_build):
>          # FIXME: handle this
> +        self.handler.notify_building_state(False)
>          return
>  
>      def running_build_succeeded_cb(self, running_build):
> +        self.handler.notify_building_state(False)
>          label = gtk.Label("Build completed, start another build?")
>          dialog = gtk.Dialog("Build complete",
>                              self,
> @@ -76,7 +78,7 @@ class MainWindow (gtk.Window):
>          label.show()
>          response = dialog.run()
>          dialog.destroy()
> -        if not response == gtk.RESPONSE_YES:
> +        if response == gtk.RESPONSE_YES:
>              self.model.reset() # NOTE: really?
>              self.nb.set_current_page(0)
>          return
> @@ -555,7 +557,6 @@ class MainWindow (gtk.Window):
>  
>  def main (server, eventHandler):
>      gobject.threads_init()
> -    gtk.gdk.threads_init()
>  
>      taskmodel = TaskListModel()
>      handler = HobHandler(taskmodel, server)

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


