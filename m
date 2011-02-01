Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF3094C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 11:44:31 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11HkWcx028233; Tue, 1 Feb 2011 17:46:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xXiDaOvZ-MvN; Tue,  1 Feb 2011 17:46:32 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11HkPnM028227
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 17:46:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <70e416b931ba9ee1ca24a967a0410fda65b48bea.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<70e416b931ba9ee1ca24a967a0410fda65b48bea.1296267951.git.paul.eggleton@linux.intel.com>
Date: Tue, 01 Feb 2011 17:44:12 +0000
Message-ID: <1296582252.13501.20225.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 05/12] qt4-tools-native: update from OpenEmbedded
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
X-List-Received-Date: Tue, 01 Feb 2011 17:44:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-29 at 02:30 +0000, Paul Eggleton wrote:
> @@ -30,7 +38,7 @@ EXTRA_OECONF = "-prefix ${prefix} \
>  EXTRA_OEMAKE = " "
>  
>  do_configure() {
> -	(echo o; echo yes) | ./configure ${EXTRA_OECONF} || die "Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
> +   (echo o; echo yes) | ./configure ${EXTRA_OECONF} || die "Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
>  }
>  
>  TOBUILD = "\
> @@ -48,22 +56,22 @@ TOBUILD = "\
>  "
>  
>  do_compile() {
> -	for i in ${TOBUILD}; do
> -		cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
> -	done
> +    for i in ${TOBUILD}; do
> +        cd ${S}/$i && oe_runmake CC="${CC}" CXX="${CXX}"
> +    done
>  }


Please don't reindent files when making other changes, it makes it hard
to see where the real changes were. I've pulled things but taken out the
worst whitespace changes manually this time.

Please keep in mind:

shell functions/code use tabs
python code uses four space indentation

There are a number of new files that merged which don't do this for
shell functions, we should probably patch those up.

Cheers,

Richard



