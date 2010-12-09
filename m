Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D073B4C80FA4
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 07:53:41 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9DrZGR007499;
	Thu, 9 Dec 2010 13:53:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07381-02; Thu,  9 Dec 2010 13:53:31 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9DrR9m007493
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 13:53:27 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CFEDF08.5040704@linux.intel.com>
References: <4CFEB16A.1010507@linux.intel.com>
	<1291761530.1554.169.camel@rex> <4CFEBBE2.3040300@linux.intel.com>
	<4CFEDF08.5040704@linux.intel.com>
Date: Thu, 09 Dec 2010 13:53:16 +0000
Message-ID: <1291902796.1554.864.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: RFC: Undocumented Recipe Variables Script
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
X-List-Received-Date: Thu, 09 Dec 2010 13:53:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 17:27 -0800, Darren Hart wrote:
> After discussing a bit with Richard, we felt seeing a count for each
> recipe that used a variable along with the doc tag (documentation.conf)
> would aid in identifying which variables needed documentation. The
> attached script accomplishes this. The -T argument will limit output to
> only variables with doc tags - which should make updating the
> documentation rather trivial.
> 
> Things like PROVIDES with 50 occurences under meta and an existing doc
> tag should be prioritized for documentation updates. After that, things
> like BBCLASSEXTEND with 117 users and no doc-tag should follow.
> 
> Richard, could you give the output a scan and let me know if there is
> additional filtering I could add to make the results easier to digest?
> If they look good to you, can you have a go at identifying a set of
> variables that should get documentation updates?

Some of whats listed is still documented, e.g. PACKAGES_ or RDEPENDS_.

I've done a *very* rough filter over this to highlight the ones I think
we need to try and document first and some other things I noticed:

We should check if these are in the bitbake manual:

BB_CURRENTTASK                        1     
BB_DEFAULT_TASK                       4     
BB_HASHCHECK_FUNCTION                 1     
BB_HASHFILENAME                       1     
BB_MIN_VERSION                        1     
BB_RUNTASK                            1     
BB_SCHEDULER                          1     
BB_TASKHASH                           1     
BB_VERSION                            1     
BB_WORKERCONTEXT                      1     

I'd like to know what is setting this as we shouldn't using BROKEN IMO:
BROKEN                                1     

Some subset of these should be documented:
SSTATE_BUILDDIR                       1     
SSTATE_DIR                            1     
SSTATE_INSTDIR                        1     
SSTATE_MANFILEBASE                    1     
SSTATE_MANFILEPREFIX                  1     
SSTATE_MANIFESTS                      1     
SSTATE_MIRRORS                        1     
SSTATE_PKG                            1     
SSTATE_PKGARCH                        1     
SSTATE_PKGNAME                        1     
SSTATE_SCAN_CMD                       1     
SSTATE_VERSION                        1     

Something is broken here with a misspelling:
DESCRIPTON                            6
PARALELL_MAKE_                        1          

These variables are dead iirc and shouldn't be referenced anywhere:
NATIVE_INSTALL_WORKS                  1
PSTAGING_ACTIVE                       1     
PSTAGING_DISABLED                     1     


I also wondered about these:
LIC_CHKSUM_FILES                      2     
LIC_FILE_CHKSUM                       1     

these are ones I'd like to see documented with a higher priority:

ALLOW_EMPTY                           24    
ALTERNATIVE_LINKS                     4     
APPEND                                2     
BBCLASSEXTEND                         117   
BUGTRACKER                            114   
BUILD_AR                              1     
BUILD_ARCH                            4     The name of the building architecture. E.g. i686.
BUILD_CC                              11    
BUILD_CC_ARCH                         2     FIXME
BUILD_CFLAGS                          7     
BUILD_CXX                             3     
BUILD_CXXFLAGS                        3     
BUILD_LD                              1     
BUILD_LDFLAGS                         5     
BUILD_OS                              3     
BUILD_PREFIX                          4     FIXME
BUILD_RANLIB                          1     
BUILD_SYS                             13    FIXME
BUILD_VENDOR                          2     FIXME
CCACHE                                6
CFLAGS_                               10    
CLEANFUNCS                            2
CMDLINE_                              1     
CMDLINE_CONSOLE                       1     
COMMERCIAL_AUDIO_PLUGINS              2     
COMMERCIAL_LICENSE                    1     
COMMERCIAL_QT                         1     
COMMERCIAL_VIDEO_PLUGINS              1     
COMPATIBLE_HOST                       17    A regular expression which matches the HOST_SYS names supported by the package/file. Failure to match will cause the file to be skipped by the parser.
CONFFILES                             3     
CPPFLAGS                              13    
CXXFLAGS                              14    
DEBIANNAME_                           2     
DEBIAN_NAMES                          6     
DEBIAN_NOAUTONAME_                    3     
DEFAULT_PREFERENCE_                   14    
DEPLOY_DIR                            7     
DEPLOY_DIR_DEB                        2     
DEPLOY_DIR_IMAGE                      13    
DEPLOY_DIR_IPK                        3     
DEPLOY_DIR_RPM                        2     
DEPLOY_DIR_SRC                        1     
DEPLOY_DIR_TAR                        1     
DEPLOY_KEEP_PACKAGES                  2     
DESCRIPTION_                          8
EXCLUDE_FROM_SHLIBS                   1     
EXCLUDE_FROM_WORLD                    10    
EXPORT_FUNCTIONS                      24    
EXTRA_AUTORECONF                      4     
EXTRA_CFLAGS                          1     
EXTRA_CPANFLAGS                       2     
EXTRA_DIST                            3     
EXTRA_IMAGEDEPENDS                    1     
EXTRA_NATIVE_PKGCONFIG_PATH           1     
EXTRA_OECONF_                         12    
EXTRA_OEMAKE_                         2     
EXTRA_OEMAKE_NETGROUP                 1     
EXTRA_QMAKEVARS_POST                  1     
EXTRA_QMAKEVARS_PRE                   1     
EXTRA_RDEPENDS                        1     
FAKEROOT                              4     
FAKEROOTENV                           1     
FILESDIR                              11    
FILESEXTRAPATHS                       1     
FILESPATH                             10    
FILESPATHBASE                         1     
FILESPATHPKG                          2     
FILES_                                179   
FILE_DIRNAME                          11    
FULL_OPTIMIZATION_                    2     
GIT_CONFIG                            1     
GIT_CORE_CONFIG                       1     
GIT_PROXY_COMMAND                     1     
GIT_PROXY_IGNORE                      1     
HOST_AR                               1     
HOST_ARCH                             9     The name of the target architecture. Normally same as the TARGET_ARCH. @see TARGET_ARCH @group base
HOST_AR_KERNEL_ARCH                   1     
HOST_CC                               1     
HOST_CC_ARCH                          5     Normally same as the TARGET_CC_ARCH. @see TARGET_CC_ARCH @group base
HOST_CC_KERNEL_ARCH                   2     
HOST_CFLAGS                           1     
HOST_CXX                              1     
HOST_CXXFLAGS                         1     
HOST_LDFLAGS                          1     
HOST_OS                               7     
HOST_PREFIX                           10    Normally same as the TARGET_PREFIX. @see TARGET_PREFIX @group base
HOST_RANLIB                           1     
HOST_SYS                              21    FIXME
HOST_VENDOR                           6     The name of the vendor. Normally same as the TARGET_VENDOR. @see TARGET_VENDOR
IMAGEROOTFS                           2     
IMAGETEST                             1     
IMAGE_BASENAME                        2     
IMAGE_CMD_                            1     
IMAGE_DEPENDS_                        1     
IMAGE_DEVICE_TABLE                    1     
IMAGE_DEVICE_TABLES                   1     
IMAGE_LINGUAS                         3     
IMAGE_LINK_NAME                       3     
IMAGE_LOCALES                         2     
IMAGE_NAME                            5     
IMAGE_OVERHEAD_FACTOR                 1     
IMAGE_PKGTYPE                         5     
IMAGE_POSTPROCESS_COMMAND             1     
IMAGE_PREPROCESS_COMMAND              2     
IMAGE_ROOTFS                          12    
IMAGE_ROOTFS_SIZE                     1     
INHIBIT_AUTOTOOLS_DEPS                2     
INHIBIT_AUTO_STAGE                    1     
INHIBIT_DEFAULT_DEPS                  13    
KERNELDIR                             1     
KERNEL_ALT_IMAGETYPE                  1     
KERNEL_CC                             5     
KERNEL_FEATURES                       1     
KERNEL_IMAGE_BASE_NAME                2     
KERNEL_IMAGE_MAXSIZE                  1     
KERNEL_IMAGE_SYMLINK_NAME             2     
KERNEL_LD                             4     
KERNEL_VERSION                        6     
KMACHINE                              1     
LAYER_CONF_VERSION                    1     
LCONF_VERSION                         1     
LDFLAGS                               32    
LDFLAGS_                              2     
LEAD_SONAME                           12    
LICENCE                               5     
LINGUAS_INSTALL                       4     
LOG_DIR                               3     
MACHINE_ARCH                          27    
MACHINE_ESSENTIAL_EXTRA_RDEPENDS      2     
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS   2     
MACHINE_POSTPROCESS_COMMAND           1     
MIRRORS                               1     
MULTIMACH_ARCH                        3     
MULTIMACH_HOST_SYS                    2     
MULTIMACH_TARGET_SYS                  5     
OBJCOPY                               2     
OBJDUMP                               2     
OVERRIDES                             13    
PACKAGES_                             6     
PACKAGES_DYNAMIC                      19    
PACKAGE_ARCHS                         10    
PACKAGE_INSTALL                       4     
PACKAGE_INSTALL_ATTEMPTONLY           4     
PACKAGE_PREPROCESS_FUNCS              4     
PARALLEL_MAKE_                        1     
PATCHRESOLVE                          1     
PATH_                                 2     
PF                                    3     Package name - Package version - Package revision (PN-PV-PR)
PKG                                   6     
PKGD                                  7     
PKGDATA_DIR                           4     
PKGDEST                               8     
PKGDESTWORK                           1     
PKGFN                                 4     
PKGHIST_DIR                           2     
PKG_                                  12    
PKG_CONFIG                            1     
PKG_CONFIG_DIR                        3     
PKG_CONFIG_PATH                       3     
PKG_CONFIG_SYSROOT_DIR                5     
PREFERRED_PROVIDER_                   1     
PRIORITY                              73    Importance of package, default values are 'optional' or 'needed'.
PROVIDES                              50    Names for additional build time dependencies that this package will provide. @group dependencies
QA_LOGFILE                            1     
ROOTFS_PKGMANAGE                      5     
ROOTFS_PKGMANAGE_BOOTSTRAP            3     
ROOTFS_POSTINSTALL_COMMAND            2     
ROOTFS_POSTPROCESS_COMMAND            7     
RPM_POSTPROCESS_COMMANDS              1     
RPM_PREPROCESS_COMMANDS               1     
RPROVIDES                             9     Names for additional run time dependencies that this package will provide.  This is used to populate the ipkg:Provides field. @group dependencies
RRECOMMENDS_                          21    
RREPLACES_                            4     
RSUGGESTS                             4     
SDKMACHINE                            2     
SDK_ARCH                              8     
SDK_CC_ARCH                           3     
SDK_DEPLOY                            2     
SDK_DIR                               2     
SDK_NAME                              2     
SDK_OS                                4     
SDK_OUTPUT                            3     
SDK_PREFIX                            3     
SDK_VENDOR                            3     
SRCREV_                               1     
SRCREV_FORMAT                         2     
SRC_URI_                              43    
STAGING_BINDIR                        3     
STAGING_BINDIR_CROSS                  11    
STAGING_BINDIR_NATIVE                 13    
STAGING_BINDIR_TOOLCHAIN              2     
STAGING_DATADIR                       16    
STAGING_DATADIR_NATIVE                3     
STAGING_DIR                           13    
STAGING_DIR_HOST                      18    
STAGING_DIR_NATIVE                    19    
STAGING_DIR_TARGET                    18    
STAGING_ETCDIR_NATIVE                 3     
STAGING_EXECPREFIXDIR                 1     
STAGING_INCDIR                        39    
STAGING_INCDIR_NATIVE                 6     
STAGING_LIBDIR                        42    
STAGING_LIBDIR_NATIVE                 9     
STAMP                                 3     The directory that holds files to keep track of what was built.
SYSROOT_DESTDIR                       12    
TARGETARCH                            1     
TARGETFPU                             1     
TARGETOS                              1     
TARGET_AR_KERNEL_ARCH                 1     
TARGET_CC_ARCH                        5     FIXME
TARGET_CC_ARCH_                       1     
TARGET_CC_KERNEL_ARCH                 2     
TARGET_CPPFLAGS                       3     
TARGET_LDFLAGS                        1     
TARGET_LD_KERNEL_ARCH                 2     
TARGET_PREFIX                         23    The prefix for the cross compile toolchain. E.g arm-linux- .
TARGET_SYS                            19    The target system is composed out of TARGET_ARCH,TARGET_VENDOR and TARGET_OS.
TARGET_VENDOR                         7     FIXME
TOPDIR                                3     
XORG_PN                               33    


     



