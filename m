Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFCF8E004D2
	for <poky@yoctoproject.org>; Wed, 18 Jan 2012 05:06:10 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6127CF8127D; Wed, 18 Jan 2012 06:06:08 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	UPPERCASE_50_75 autolearn=no version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3DA04F8127A;
	Wed, 18 Jan 2012 06:06:07 -0700 (MST)
Message-ID: <4F16C3BE.4040806@mlbassoc.com>
Date: Wed, 18 Jan 2012 06:06:06 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4F16AF6A.2060704@mlbassoc.com> <1326891257.2511.2.camel@ted>
In-Reply-To: <1326891257.2511.2.camel@ted>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: New sstate concern
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
X-List-Received-Date: Wed, 18 Jan 2012 13:06:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-18 05:54, Richard Purdie wrote:
> On Wed, 2012-01-18 at 04:39 -0700, Gary Thomas wrote:
>> Updating today to rev 5724ee9c3a99519fea96446638910b727b89898d, I have new
>> concerns my sstate-cache is once again useless with most every package
>> being rebuilt, e.g.:
>>
>> p60_test_pass1/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
>> p60_new/tmp/stamps/i686-linux/u-boot-mkimage-native-2011.06-r0.do_fetch.sigdata.275c6cb8e401bc01179906d05ff611c7
>> basewhitelist changed from set(['SSTATE_DIR', 'FILESPATH', 'TERM', 'BB_TASKHASH', 'STAGING_DIR_HOST', 'FILESEXTRAPATHS', 'PWD', 'COREBASE', 'BBPATH', 'SHELL', 'DL_DIR',
>> 'STAGING_DIR_TARGET', 'LOGNAME', 'THISDIR', 'FILE', 'FILE_DIRNAME', 'PATH', 'HOME', 'TMPDIR', 'USER']) to set(['PRSERV_PORT', 'DL_DIR', 'LOGNAME', 'USER', 'FILE', 'HOME', 'PATH',
>> 'TERM', 'SHELL', 'COREBASE', 'PRSERV_DUMPDIR', 'SSTATE_DIR', 'BB_TASKHASH', 'FILESEXTRAPATHS', 'THISDIR', 'BBPATH', 'STAGING_DIR_TARGET', 'FILE_DIRNAME', 'PRSERV_HOST', 'TMPDIR',
>> 'FILESPATH', 'STAGING_DIR_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PWD'])
>> changed items: set(['PRSERV_PORT', 'PRSERV_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PRSERV_DUMPDIR'])
>>
>> Are these newly introduced variables really necessary in the
>> signatures?
>
> Its telling you there was a difference and the configuration changed but
> those variables are not included in the stamp and that message is for
> information purposes only.
>
> If you look closely at the above, the same checksum is shown
> (275c6cb8e401bc01179906d05ff611c7 for both)!

I should have seen that, sorry.

Still trying to understand why this update is causing everything to
be rebuilt, how about this one?

p60_test_pass1/tmp/stamps/i686-linux/ldconfig-native-2.12.1-r2.do_configure.sigdata.7313d9d2da9a7307214c707b22ba14bd
p60_new/tmp/stamps/i686-linux/ldconfig-native-2.12.1-r2.do_configure.sigdata.c7fdc1d3d32037e732a62ac55f07c115
basewhitelist changed from set(['SSTATE_DIR', 'FILESPATH', 'TERM', 'BB_TASKHASH', 'STAGING_DIR_HOST', 'FILESEXTRAPATHS', 'PWD', 'COREBASE', 'BBPATH', 'SHELL', 'DL_DIR', 
'STAGING_DIR_TARGET', 'LOGNAME', 'THISDIR', 'FILE', 'FILE_DIRNAME', 'PATH', 'HOME', 'TMPDIR', 'USER']) to set(['PRSERV_PORT', 'DL_DIR', 'LOGNAME', 'USER', 'FILE', 'HOME', 'PATH', 
'TERM', 'SHELL', 'COREBASE', 'PRSERV_DUMPDIR', 'SSTATE_DIR', 'BB_TASKHASH', 'FILESEXTRAPATHS', 'THISDIR', 'BBPATH', 'STAGING_DIR_TARGET', 'FILE_DIRNAME', 'PRSERV_HOST', 'TMPDIR', 
'FILESPATH', 'STAGING_DIR_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PWD'])
changed items: set(['PRSERV_PORT', 'PRSERV_HOST', 'PRSERV_DUMPFILE', 'PRSERV_LOCKDOWN', 'PRSERV_DUMPDIR'])
Task dependencies changed from:
['AR', 'AS', 'ASNEEDED', 'BUILD_AR', 'BUILD_ARCH', 'BUILD_AS', 'BUILD_AS_ARCH', 'BUILD_CC', 'BUILD_CCLD', 'BUILD_CC_ARCH', 'BUILD_CFLAGS', 'BUILD_CPP', 'BUILD_CPPFLAGS', 
'BUILD_CXX', 'BUILD_CXXFLAGS', 'BUILD_F77', 'BUILD_LD', 'BUILD_LDFLAGS', 'BUILD_LD_ARCH', 'BUILD_NM', 'BUILD_OPTIMIZATION', 'BUILD_OS', 'BUILD_PREFIX', 'BUILD_RANLIB', 
'BUILD_STRIP', 'BUILD_SYS', 'BUILD_VENDOR', 'CC', 'CCACHE', 'CCACHE_DIR', 'CCLD', 'CFLAGS', 'CONFIG_SITE', 'CPP', 'CPPFLAGS', 'CXX', 'CXXFLAGS', 'DEBUG_BUILD', 'DEBUG_FLAGS', 
'DEBUG_OPTIMIZATION', 'EXTRA_NATIVE_PKGCONFIG_PATH', 'F77', 'FULL_OPTIMIZATION', 'HOST_AS_ARCH', 'HOST_CC_ARCH', 'HOST_LD_ARCH', 'HOST_OS', 'HOST_PREFIX', 'HOST_VENDOR', 'LC_ALL', 
'LD', 'LDFLAGS', 'LINKER_HASH_STYLE', 'MAKE', 'MULTIMACH_HOST_SYS', 'NATIVE_PACKAGE_PATH_SUFFIX', 'NM', 'OBJCOPY', 'OBJDUMP', 'OPIEDIR', 'PACKAGE_ARCH', 'PATCH_GET', 
'PKG_CONFIG_DIR', 'PKG_CONFIG_DISABLE_UNINSTALLED', 'PKG_CONFIG_LIBDIR', 'PKG_CONFIG_PATH', 'PKG_CONFIG_SYSROOT_DIR', 'PN', 'PSEUDO_DISABLED', 'QPEDIR', 'QTDIR', 'RANLIB', 
'SELECTED_OPTIMIZATION', 'STAGING_DATADIR', 'STAGING_DIR', 'STAGING_DIR_NATIVE', 'STAGING_INCDIR_NATIVE', 'STAGING_LIBDIR_NATIVE', 'STRIP', 'TARGET_CFLAGS', 'TARGET_CPPFLAGS', 
'TARGET_CXXFLAGS', 'TARGET_LDFLAGS', 'TARGET_LINK_HASH_STYLE', 'base_bindir', 'base_do_configure', 'base_libdir', 'base_prefix', 'base_sbindir', 'baselib', 'bindir', 'datadir', 
'docdir', 'exec_prefix', 'includedir', 'includedir_native', 'infodir', 'libdir', 'libdir_native', 'libexecdir', 'localstatedir', 'mandir', 'oldincludedir', 'palmqtdir', 
'palmtopdir', 'prefix', 'prefix_native', 'sbindir', 'servicedir', 'sharedstatedir', 'sysconfdir']
to:
['AR', 'AS', 'ASNEEDED', 'BUILD_AR', 'BUILD_ARCH', 'BUILD_AS', 'BUILD_AS_ARCH', 'BUILD_CC', 'BUILD_CCLD', 'BUILD_CC_ARCH', 'BUILD_CFLAGS', 'BUILD_CPP', 'BUILD_CPPFLAGS', 
'BUILD_CXX', 'BUILD_CXXFLAGS', 'BUILD_F77', 'BUILD_LD', 'BUILD_LDFLAGS', 'BUILD_LD_ARCH', 'BUILD_NM', 'BUILD_OPTIMIZATION', 'BUILD_OS', 'BUILD_PREFIX', 'BUILD_RANLIB', 
'BUILD_STRIP', 'BUILD_SYS', 'BUILD_VENDOR', 'CC', 'CCACHE', 'CCACHE_DIR', 'CCLD', 'CFLAGS', 'CONFIG_SITE', 'CPP', 'CPPFLAGS', 'CXX', 'CXXFLAGS', 'DEBUG_BUILD', 'DEBUG_FLAGS', 
'DEBUG_OPTIMIZATION', 'EXTRA_NATIVE_PKGCONFIG_PATH', 'F77', 'FULL_OPTIMIZATION', 'HOST_AS_ARCH', 'HOST_CC_ARCH', 'HOST_LD_ARCH', 'HOST_OS', 'HOST_PREFIX', 'HOST_VENDOR', 'LC_ALL', 
'LD', 'LDFLAGS', 'LINKER_HASH_STYLE', 'MAKE', 'MULTIMACH_HOST_SYS', 'NATIVE_PACKAGE_PATH_SUFFIX', 'NM', 'OBJCOPY', 'OBJDUMP', 'OPIEDIR', 'PACKAGE_ARCH', 'PATCH_GET', 
'PKG_CONFIG_DIR', 'PKG_CONFIG_DISABLE_UNINSTALLED', 'PKG_CONFIG_LIBDIR', 'PKG_CONFIG_PATH', 'PKG_CONFIG_SYSROOT_DIR', 'PN', 'PSEUDO_DISABLED', 'QPEDIR', 'QTDIR', 'RANLIB', 
'SELECTED_OPTIMIZATION', 'STAGING_BASE_LIBDIR_NATIVE', 'STAGING_DATADIR', 'STAGING_DIR', 'STAGING_DIR_NATIVE', 'STAGING_INCDIR_NATIVE', 'STAGING_LIBDIR_NATIVE', 'STRIP', 
'TARGET_CFLAGS', 'TARGET_CPPFLAGS', 'TARGET_CXXFLAGS', 'TARGET_LDFLAGS', 'TARGET_LINK_HASH_STYLE', 'base_bindir', 'base_do_configure', 'base_libdir', 'base_libdir_native', 
'base_prefix', 'base_sbindir', 'baselib', 'bindir', 'datadir', 'docdir', 'exec_prefix', 'includedir', 'includedir_native', 'infodir', 'libdir', 'libdir_native', 'libexecdir', 
'localstatedir', 'mandir', 'oldincludedir', 'palmqtdir', 'palmtopdir', 'prefix', 'prefix_native', 'sbindir', 'servicedir', 'sharedstatedir', 'sysconfdir']
basehash changed from 9bc687ce06f70f51b00a6b5ee525976c to a718f11cdde018a842d0dc34c766f8bf
List of dependencies for variable BUILD_LDFLAGS changed from set(['STAGING_LIBDIR_NATIVE']) to set(['STAGING_BASE_LIBDIR_NATIVE', 'STAGING_LIBDIR_NATIVE'])
changed items: set(['STAGING_BASE_LIBDIR_NATIVE'])
Dependency on Variable base_libdir_native was removed
Dependency on Variable STAGING_BASE_LIBDIR_NATIVE was removed
Variable BUILD_LDFLAGS value changed from -L${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-O1 to 
-L${STAGING_LIBDIR_NATIVE} -L${STAGING_BASE_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_LIBDIR_NATIVE} -Wl,-rpath-link,${STAGING_BASE_LIBDIR_NATIVE} 
-Wl,-rpath,${STAGING_LIBDIR_NATIVE} -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} -Wl,-O1
Hash for dependent task ldconfig-native_2.12.1.bb.do_patch changed from 194974324a80455c3b58f824421da3d0 to f4a5d01ab2e6c472629392ba1d83e288

I can see that basehash changed which is probably the killer.
Can you tell me what causes this?

Thanks for your help understanding this.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

