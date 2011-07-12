Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C944A4C800A9
	for <poky@yoctoproject.org>; Tue, 12 Jul 2011 14:55:03 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6CJt3Sj001426
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 12 Jul 2011 12:55:03 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 12 Jul 2011 12:55:02 -0700
Message-ID: <4E1CA696.9010406@windriver.com>
Date: Tue, 12 Jul 2011 14:55:02 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E0DC212.5020808@freyther.de> <4E0DCF2C.1090602@windriver.com>
	<4E10607A.1070909@freyther.de>
In-Reply-To: <4E10607A.1070909@freyther.de>
Subject: Re: Installing GDB or the saga of getting RPM/Zypp to run on	JFFS2
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
X-List-Received-Date: Tue, 12 Jul 2011 19:55:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 7/3/11 7:28 AM, Holger Hans Peter Freyther wrote:
> On 07/01/2011 03:44 PM, Mark Hatle wrote:
> 
>>
>> macro files are being loaded from:
>>
>> %{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:%{_etcrpm}/macros.*:%{_etcrpm}/macros:%{_etcrpm}/%{_target}/macros:~/.oerpmmacros
>>
>> The key above is the /etc/rpm/macros.*
>>
>> I would recommend a new file be generated called /etc/rpm/macros.jffs2 that
>> changes the setting as appropriate for that filesystem.  (How it's placed into
>> the filesystem I'm not sure.  I think it all comes down to detecting we're
>> building a jffs2 filesystem and doing it there.  Perhaps in the rootfs_rpm.bbclass?)
> 
> What do you think about something like the change below? Alternatively one
> could write a post-inst script that checks if one is on jffs2 and then creates
> the config file.

Sorry for the late reply.  I'm back from vacation now.

The below is fine with me.  I suggest it be submitted as a patch to oe-core.
I'll be happy to ack it.

--Mark

> 
> diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
> index 3a11858..70459e5 100644
> --- a/meta/classes/rootfs_rpm.bbclass
> +++ b/meta/classes/rootfs_rpm.bbclass
> @@ -139,6 +139,14 @@ EOF
>         install -d ${IMAGE_ROOTFS}/${sysconfdir}
>         echo ${BUILDNAME} > ${IMAGE_ROOTFS}/${sysconfdir}/version
> 
> +
> +       # check if there is a jffs2 install, it requires a workaround
> +       # due lacking support for MMAP read/write.
> +       (echo "${IMAGE_FSTYPES}" | grep "jffs2" > /dev/null)
> +       if [ $? == 0 ]; then
> +               echo "%__dbi_txn      create lock log txn auto_commit nommap
> private" > ${IMAGE_ROOTFS}/etc/rpm/macros.jffs2
> +       fi
> +
>         ${RPM_POSTPROCESS_COMMANDS}
>         ${ROOTFS_POSTPROCESS_COMMAND}
> 
> @@ -164,6 +172,7 @@ EOF
>  }
> 
>  remove_packaging_data_files() {
> +       rm -rf ${IMAGE_ROOTFS}/etc/rpm/macros.jffs2
>         rm -rf ${IMAGE_ROOTFS}${rpmlibdir}
>         rm -rf ${IMAGE_ROOTFS}${opkglibdir}
>  }
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


