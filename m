Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0EE34C80044
	for <poky@lists.pokylinux.org>; Sat,  6 Nov 2010 07:58:02 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3A83A1660748; Sat,  6 Nov 2010 06:58:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	NORMAL_HTTP_TO_IP autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1B34F16606E9;
	Sat,  6 Nov 2010 06:58:01 -0600 (MDT)
Message-ID: <4CD550D9.30601@mlbassoc.com>
Date: Sat, 06 Nov 2010 06:58:01 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Crazy QT packaging
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
X-List-Received-Date: Sat, 06 Nov 2010 12:58:03 -0000
X-Groupsio-MsgNum: 78
Content-Type: multipart/mixed; boundary="------------050803050600060809010107"

--------------050803050600060809010107
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just tried to install 'fotowall', a QT application.  Much to
my surprise, a whole bunch of QT packages were installed, many
of which I have no need and don't understand why they are "required".

In particular, the examples and demos, plus QT-designer (I have
no development tools installed on my platform).

Any ideas why this happens?  how to fix it?

Install log is attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050803050600060809010107
Content-Type: text/plain;
 name="foto"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="foto"

root@cobra3530p60:~# opkg install fotowall
Installing fotowall (0.9-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/fotowall_0.9-r0_armv7a.ipk.
qt4-fonts: unsatisfied recommendation for qt4-fonts-ttf-vera
qt4-fonts: unsatisfied recommendation for qt4-fonts-ttf-dejavu
qt4-fonts: unsatisfied recommendation for qt4-fonts-qpf
qt4-fonts: unsatisfied recommendation for qt4-fonts-pfb
qt4-fonts: unsatisfied recommendation for qt4-fonts-pfa
qt4-x11-free: unsatisfied recommendation for qt4-fonts-qpf
qt4-x11-free: unsatisfied recommendation for libqtuitools4
qt4-x11-free: unsatisfied recommendation for qt4-fonts-ttf-vera
qt4-x11-free: unsatisfied recommendation for qt4-makeqpf
qt4-x11-free: unsatisfied recommendation for libqtmediaservices4
qt4-x11-free: unsatisfied recommendation for libqtxmlpatterns4
qt4-x11-free: unsatisfied recommendation for qt4-fonts-ttf-dejavu
qt4-x11-free: unsatisfied recommendation for libqtopenvg4
qt4-x11-free: unsatisfied recommendation for qt4-fonts-pfa
qt4-x11-free: unsatisfied recommendation for qt4-fonts-pfb
qt4-x11-free: unsatisfied recommendation for libqtopengl4
qt4-x11-free: unsatisfied recommendation for libqtpvrqwswsegl4
Installing libqtgui4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtgui4_4.6.3-r0_armv7a.ipk.
Installing libqtcore4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtcore4_4.6.3-r0_armv7a.ipk.
Installing libqtxml4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtxml4_4.6.3-r0_armv7a.ipk.
Installing libqtsvg4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtsvg4_4.6.3-r0_armv7a.ipk.
Installing libqtnetwork4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtnetwork4_4.6.3-r0_armv7a.ipk.
Installing qt4-x11-free (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-x11-free_4.6.3-r0_armv7a.ipk.
Installing qt4-linguist (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-linguist_4.6.3-r0_armv7a.ipk.
Installing qt4-examples (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-examples_4.6.3-r0_armv7a.ipk.
Installing libqtdbus4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtdbus4_4.6.3-r0_armv7a.ipk.
Installing libqthelp4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqthelp4_4.6.3-r0_armv7a.ipk.
Installing libqtclucene4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtclucene4_4.6.3-r0_armv7a.ipk.
Installing libqtsql4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtsql4_4.6.3-r0_armv7a.ipk.
Installing libqttest4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqttest4_4.6.3-r0_armv7a.ipk.
Installing libqtscripttools4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtscripttools4_4.6.3-r0_armv7a.ipk.
Installing libqtscript4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtscript4_4.6.3-r0_armv7a.ipk.
Installing libqtwebkit4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtwebkit4_4.6.3-r0_armv7a.ipk.
Installing libphonon4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libphonon4_4.6.3-r0_armv7a.ipk.
Installing libqtassistantclient4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtassistantclient4_4.6.3-r0_armv7a.ipk.
Installing libqtmultimedia4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtmultimedia4_4.6.3-r0_armv7a.ipk.
Installing libqt3support4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqt3support4_4.6.3-r0_armv7a.ipk.
Installing qt4-fonts (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-fonts_4.6.3-r0_armv7a.ipk.
Installing qt4-demos (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-demos_4.6.3-r0_armv7a.ipk.
Installing qt4-dbus (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-dbus_4.6.3-r0_armv7a.ipk.
Installing qt4-assistant (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-assistant_4.6.3-r0_armv7a.ipk.
Installing qt4-mkspecs (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-mkspecs_4.6.3-r0_armv7a.ipk.
Installing libqtdesignercomponents4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtdesignercomponents4_4.6.3-r0_armv7a.ipk.
Installing libqtdesigner4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/libqtdesigner4_4.6.3-r0_armv7a.ipk.
Installing qt4-tools (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-tools_4.6.3-r0_armv7a.ipk.
Installing qt4-qt3to4 (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-qt3to4_4.6.3-r0_armv7a.ipk.
Installing qt4-pixeltool (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-pixeltool_4.6.3-r0_armv7a.ipk.
Installing qt4-common (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-common_4.6.3-r0_armv7a.ipk.
Installing gstreamer (0.10.30-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/gstreamer_0.10.30-r0_armv7a.ipk.
Installing qt4-designer (4.6.3-r0) to root...
Downloading http://192.168.1.125/poky-feeds-arm/armv7a/qt4-designer_4.6.3-r0_armv7a.ipk.
Configuring libqtcore4.
Configuring libqtgui4.
Configuring libqtxml4.
Configuring libqtdbus4.
Configuring libphonon4.
Configuring libqtnetwork4.
Configuring libqtwebkit4.
Configuring libqtclucene4.
Configuring libqtsql4.
Configuring libqthelp4.
Configuring libqttest4.
Configuring libqtscript4.
Configuring libqtscripttools4.
Configuring libqtsvg4.
Configuring libqtassistantclient4.
Configuring libqtmultimedia4.
Configuring libqt3support4.
Configuring qt4-examples.
Configuring qt4-linguist.
Configuring qt4-fonts.
Configuring qt4-demos.
Configuring qt4-dbus.
Configuring qt4-assistant.
Configuring qt4-mkspecs.
Configuring libqtdesigner4.
Configuring libqtdesignercomponents4.
Configuring qt4-tools.
Configuring qt4-qt3to4.
Configuring qt4-pixeltool.
Configuring gstreamer.
Configuring qt4-common.
Configuring qt4-designer.
Configuring qt4-x11-free.
Configuring fotowall.

--------------050803050600060809010107--
