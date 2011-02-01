Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id A98FB4C800A6
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 11:45:16 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11HlICL028288; Tue, 1 Feb 2011 17:47:18 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id CN6XH+LyAMPa; Tue,  1 Feb 2011 17:47:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11HlCXb028262
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 17:47:14 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <6184677be0e44d76b634b611287dca567dfdd3bd.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<6184677be0e44d76b634b611287dca567dfdd3bd.1296267951.git.paul.eggleton@linux.intel.com>
Date: Tue, 01 Feb 2011 17:44:59 +0000
Message-ID: <1296582299.13501.20230.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 11/12] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Tue, 01 Feb 2011 17:45:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-29 at 02:30 +0000, Paul Eggleton wrote:

> +++ b/meta/recipes-qt/meta/meta-toolchain-qte.bb
> @@ -0,0 +1,32 @@
> +# Qt Embedded toolchain
> +PR = "r5"
> +TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host"
> +TOOLCHAIN_TARGET_TASK = "task-qte-toolchain-target"
> +
> +require recipes-core/meta/meta-toolchain.bb
> +SDK_SUFFIX = "toolchain-qte"
> +
> +QT_DIR_NAME = "qtopia"
> +
> +do_populate_sdk_append() {
> +    script="${SDK_OUTPUT}/${SDKPATH}/environment-setup"
> +    touch $script
> +    echo 'export OE_QMAKE_CC=${TARGET_SYS}-gcc' >> $script
> +    echo 'export OE_QMAKE_CXX=${TARGET_SYS}-g++' >> $script
> +    echo 'export OE_QMAKE_LINK=${TARGET_SYS}-g++' >> $script
> +    echo 'export OE_QMAKE_AR=${TARGET_SYS}-ar' >> $script
> +    echo 'export OE_QMAKE_LIBDIR_QT=${SDKPATH}/${TARGET_SYS}/${libdir}' >> $script
> +    echo 'export OE_QMAKE_INCDIR_QT=${SDKPATH}/${TARGET_SYS}/${includedir}/${QT_DIR_NAME}' >> $script
> +    echo 'export OE_QMAKE_MOC=${SDKPATH}/bin/moc4' >> $script
> +    echo 'export OE_QMAKE_UIC=${SDKPATH}/bin/uic4' >> $script
> +    echo 'export OE_QMAKE_UIC3=${SDKPATH}/bin/uic34' >> $script
> +    echo 'export OE_QMAKE_RCC=${SDKPATH}/bin/rcc4' >> $script
> +    echo 'export OE_QMAKE_QDBUSCPP2XML=${SDKPATH}/bin/qdbuscpp2xml4' >> $script
> +    echo 'export OE_QMAKE_QDBUSXML2CPP=${SDKPATH}/bin/qdbusxml2cpp4' >> $script
> +    echo 'export OE_QMAKE_QT_CONFIG=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri' >> $script
> +    echo 'export QMAKESPEC=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++' >> $script
> +
> +    # Repack SDK with new environment-setup
> +    cd ${SDK_OUTPUT}
> +    tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
> +}

This is horrible :)

I added this:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=19e1f4f672806c8a45847ce5c2adac6da663ff69

Cheers,

Richard


