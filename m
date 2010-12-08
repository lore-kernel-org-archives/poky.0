Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4ED374C811F4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 19:27:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 17:27:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; 
	d="py'?scan'208";a="684940745"
Received: from unknown (HELO [10.255.13.189]) ([10.255.13.189])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 17:27:37 -0800
Message-ID: <4CFEDF08.5040704@linux.intel.com>
Date: Tue, 07 Dec 2010 17:27:36 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CFEB16A.1010507@linux.intel.com> <1291761530.1554.169.camel@rex>
	<4CFEBBE2.3040300@linux.intel.com>
In-Reply-To: <4CFEBBE2.3040300@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 01:27:40 -0000
X-Groupsio-MsgNum: 1036
Content-Type: multipart/mixed; boundary="------------000500010401090606020002"

--------------000500010401090606020002
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/07/2010 02:57 PM, Darren Hart wrote:
> On 12/07/2010 02:38 PM, Richard Purdie wrote:
>> On Tue, 2010-12-07 at 14:12 -0800, Darren Hart wrote:
>>> I whipped up a script to find variables in recipes
>>> and determine if they have been documented.
>> [...]
>>> ALTERNATIVE_LINK
>>> ALTERNATIVE_LINKS
>>> ALTERNATIVE_NAME
>>> ALTERNATIVE_PATH
>>> ALTERNATIVE_PRIORITY
>>
>> yet if I look at:
>>
>> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#ref-classes-update-alternatives
>>
>> these ones are.
> 
> OK, this just suggests I need to include more of the xml documents in my
> arguments. Actually, I think I'll just build the documents and include
> all the html documents.
> 
>>
>> There is a lot of noise in that script but its probably worth a pass
>> over the output to hint as to what we need to document.
> 
> Let's make sure I have all the appropriate docs being searched first.
> 
> I talked with Scott and we decided using the html file should be the
> right thing. All the above are found, with the exception of
> ALTERNATIVE_LINKS (plural) which indeed is not in the html file.
> 
> $ ./bbvars.py -m ~/source/poky.git/meta -d ~/source/poky.git/documentation/poky-ref-manual/poky-ref-manual.html
> Found 1388 undocumented bb variables (out of 1553):
> AC
> ACCESS
> ACLOCAL_CWFLAGS
> ACX
> ...

After discussing a bit with Richard, we felt seeing a count for each
recipe that used a variable along with the doc tag (documentation.conf)
would aid in identifying which variables needed documentation. The
attached script accomplishes this. The -T argument will limit output to
only variables with doc tags - which should make updating the
documentation rather trivial.

Things like PROVIDES with 50 occurences under meta and an existing doc
tag should be prioritized for documentation updates. After that, things
like BBCLASSEXTEND with 117 users and no doc-tag should follow.

Richard, could you give the output a scan and let me know if there is
additional filtering I could add to make the results easier to digest?
If they look good to you, can you have a go at identifying a set of
variables that should get documentation updates?

Thanks,
Darren

The following is a doc-tag only listing:

$ ./bbvars.py -m ~/source/poky.git/meta -d ~/source/poky.git/documentation/poky-ref-manual/poky-ref-manual.html -t ~/source/poky.git/meta/conf/documentation.conf -T 

Found 1388 undocumented bb variables (out of 1553):
VARIABLE                              COUNT DOCTAG 
===================================================
BUILD_ARCH                            4     The name of the building architecture. E.g. i686.
BUILD_CC_ARCH                         2     FIXME
BUILD_PREFIX                          4     FIXME
BUILD_SYS                             13    FIXME
BUILD_VENDOR                          2     FIXME
CACHE                                 1     The directory holding the cache of the metadata.
COMPATIBLE_HOST                       17    A regular expression which matches the HOST_SYS names supported by the package/file. Failure to match will cause the file to be skipped by the parser.
DATE                                  1     The date the build was started Ymd
HOST_ARCH                             9     The name of the target architecture. Normally same as the TARGET_ARCH. @see TARGET_ARCH @group base
HOST_CC_ARCH                          5     Normally same as the TARGET_CC_ARCH. @see TARGET_CC_ARCH @group base
HOST_PREFIX                           10    Normally same as the TARGET_PREFIX. @see TARGET_PREFIX @group base
HOST_SYS                              21    FIXME
HOST_VENDOR                           6     The name of the vendor. Normally same as the TARGET_VENDOR. @see TARGET_VENDOR
IPK_FEED_URIS                         1     List of ipkg feed records to put into generated image.
PCMCIA_MANAGER                        1     Specify which package(s) to install to handle PCMCIA slots (usually pcmcia-cs or pcmciautils).
PF                                    3     Package name - Package version - Package revision (PN-PV-PR)
PRIORITY                              73    Importance of package, default values are 'optional' or 'needed'.
PROVIDES                              50    Names for additional build time dependencies that this package will provide. @group dependencies
RPROVIDES                             9     Names for additional run time dependencies that this package will provide.  This is used to populate the ipkg:Provides field. @group dependencies
SOURCE_MIRROR_FETCH                   1     Switch marking build as source fetcher. Used to skip COMPATIBLE_* checking.
STAMP                                 3     The directory that holds files to keep track of what was built.
SYSVINIT_ENABLED_GETTYS               1     Specify which VTs should be running a getty, the default is 1
TARGET_CC_ARCH                        5     FIXME
TARGET_PREFIX                         23    The prefix for the cross compile toolchain. E.g arm-linux- .
TARGET_SYS                            19    The target system is composed out of TARGET_ARCH,TARGET_VENDOR and TARGET_OS.
TARGET_VENDOR                         7     FIXME

The unfiltered output follows:

$ ./bbvars.py -m ~/source/poky.git/meta -d ~/source/poky.git/documentation/poky-ref-manual/poky-ref-manual.html -t ~/source/poky.git/meta/conf/documentation.conf


Found 1388 undocumented bb variables (out of 1553):
VARIABLE                              COUNT DOCTAG 
===================================================
AC                                    1     
ACCESS                                1     
ACLOCAL_CWFLAGS                       2     
ACX                                   1     
AC_REQUIRE                            1     
ADD_BT                                1     
ADD_WIFI                              1     
AFTER                                 1     
AI                                    1     
AKM                                   1     
ALLOWOPTIONS                          1     
ALLOW_EMPTY                           24    
ALLOW_EMPTY_                          9     
ALTERNATIVE_LINKS                     4     
ALTNAME                               1     
AM_GLIB_GNU_GETTEXT                   1     
AM_GNU_GETTEXT                        2     
APACHE_MIRROR                         2     
API                                   6     
APPDESKTOP                            1     
APPEND                                2     
APPIMAGE                              1     
APPNAME                               1     
APR                                   2     
APT_CONFIG                            2     
AR                                    6     
ARCH                                  11    
ARCH_FLAGS_FOR_TARGET                 7     
ARFLAGS                               1     
ARM_INSTRUCTION_SET                   7     
ARM_MUTEX                             2     
ART_CONFIG                            1     
AS                                    2     
ASN                                   2     
ASNEEDED                              1     
ASSUME_SHLIBS                         1     
ATA                                   1     
ATM                                   1     
AUTHORS                               1     
AUTOLOGIN                             1     
AUTOV                                 1     
AUTO_LIBNAME_PKGS                     1     
AUTO_SYSLINUXCFG                      1     
AUTO_SYSLINUXMENU                     1     
AUX_OBJ                               1     
AV                                    1     
AWKPOSTINSTSCRIPT                     1     
BASEDIR                               1     
BASEFILESISSUEINSTALL                 1     
BASEPKG_HOST_SYS                      2     
BASEPKG_TARGET_SYS                    3     
BASEPN                                1     
BASE_CONF                             2     
BASE_PACKAGE_ARCH                     7     
BASE_SRC_URI                          3     
BBCLASSEXTEND                         117   
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
BE                                    1     
BINARY_LOCALE_ARCHES                  1     
BINCONFIG_GLOB                        1     
BINDIR                                3     
BINS                                  1     
BINV                                  2     
BJAM_EXTRA                            1     
BJAM_OPTS                             1     
BJAM_TOOLS                            1     
BLOCKS                                2     
BOOST_LIBS                            1     
BOOST_P                               1     
BOOTDD_EXTRA_SPACE                    1     
BOOTDD_VOLUME_ID                      1     
BOOTIMG_EXTRA_SPACE                   1     
BOOTIMG_VOLUME_ID                     1     
BOOTSTRAP                             1     
BP                                    4     
BROKEN                                1     
BUGS                                  1     
BUGTRACKER                            114   
BUG_ON                                1     
BUILD                                 2     
BUILDCC                               1     
BUILDCFLAGS                           1     
BUILDING                              1     
BUILDNAME                             3     
BUILDSDK_CFLAGS                       2     
BUILDSDK_CPPFLAGS                     2     
BUILDSDK_LDFLAGS                      2     
BUILDSPEC                             1     
BUILD_AR                              1     
BUILD_ARCH                            4     The name of the building architecture. E.g. i686.
BUILD_CC                              11    
BUILD_CCLD                            1     
BUILD_CC_ARCH                         2     FIXME
BUILD_CFLAGS                          7     
BUILD_CXX                             3     
BUILD_CXXFLAGS                        3     
BUILD_IMAGES_FROM_FEEDS               2     
BUILD_LD                              1     
BUILD_LDFLAGS                         5     
BUILD_OPT                             1     
BUILD_OS                              3     
BUILD_PREFIX                          4     FIXME
BUILD_RANLIB                          1     
BUILD_SHARED                          1     
BUILD_SYS                             13    FIXME
BUILD_VENDOR                          2     FIXME
BY                                    1     
CACHE                                 1     The directory holding the cache of the metadata.
CCACHE                                6     
CCDC                                  1     
CCDV                                  1     
CCFLAGS                               1     
CCLD                                  4     
CC_FOR_BUILD                          2     
CD                                    1     
CDT                                   1     
CET                                   1     
CFGL                                  1     
CFLAGS_                               10    
CFLAGS_FOR_BUILD                      1     
CGI                                   1     
CHAT                                  1     
CHECKCOMMAND_                         1     
CHRPATH_BIN                           1     
CHRPATH_BIN_                          1     
CHSRC                                 1     
CLEANFILES                            1     
CLEANFUNCS                            2     
CMAKE_CXX_COMPILER                    1     
CMAKE_CXX_FLAGS                       1     
CMAKE_CXX_FLAGS_RELEASE               1     
CMAKE_C_COMPILER                      1     
CMAKE_C_FLAGS                         1     
CMAKE_C_FLAGS_RELEASE                 1     
CMAKE_FIND_ROOT_PATH                  1     
CMAKE_FIND_ROOT_PATH_MODE_INCLUDE     1     
CMAKE_FIND_ROOT_PATH_MODE_LIBRARY     1     
CMAKE_FIND_ROOT_PATH_MODE_PROGRAM     1     
CMAKE_MAJOR_VERSION                   1     
CMAKE_MODULE_PATH                     1     
CMAKE_SYSTEM_NAME                     1     
CMDLINE_                              1     
CMDLINE_CONSOLE                       1     
CMX                                   1     
COLORFX                               1     
COMBINED_FEATURES                     1     
COMMASPACE                            1     
COMMERCIAL_AUDIO_PLUGINS              2     
COMMERCIAL_LICENSE                    1     
COMMERCIAL_QT                         1     
COMMERCIAL_VIDEO_PLUGINS              1     
COMPATIBLE_HOST                       17    A regular expression which matches the HOST_SYS names supported by the package/file. Failure to match will cause the file to be skipped by the parser.
COMPILE                               1     
CONFFILES                             3     
CONFFILES_                            13    
CONFIG                                2     
CONFIGURATION                         1     
CONFIGUREOPTS                         2     
CONFIGURE_AC                          1     
CONFIGURE_ARGS                        1     
CONFIGURE_FLAGS                       1     
CONFIG_LOCALVERSION                   1     
CONFIG_MMC_BLOCK                      1     
CONFIG_MMC_OMAP_HS                    1     
CONFIG_MODULES                        1     
CONFIG_OMAP_LL_DEBUG_UART             1     
CONFIG_OMAP_LL_DEBUG_UART_EXT         1     
CONFIG_OUT                            1     
CONFLICTNAME                          1     
CONFLICTS                             12    
CONFLICTS_                            2     
CONF_VERSION                          1     
CONTENT                               2     
CONTROL                               1     
COPTS                                 2     
COPYRIGHT                             8     
CORE                                  5     
CORYING                               1     
CPAN                                  4     
CPAN_BUILD_DEPS                       1     
CPP                                   2     
CPPFLAGS                              13    
CPPI                                  1     
CR                                    1     
CROSS                                 2     
CROSS_COMPILE                         7     
CROSS_DIR                             1     
CSI                                   1     
CSPI                                  1     
CSS                                   1     
CST                                   1     
CT                                    1     
CTAN                                  1     
CURLGNUTLS                            1     
CURLGNUTLS_                           1     
CURSES                                1     
CVE                                   2     
CWAUTOMACROSPREFIX                    1     
CXX                                   6     
CXXFLAGS                              14    
CXXFLAGS_                             1     
DA                                    3     
DATADIR                               2     
DATE                                  1     The date the build was started Ymd
DAV                                   1     
DB                                    4     
DBUS                                  1     
DBUS_SESSION_BUS_ADDRESS              1     
DCMAKE_INSTALL_PREFIX                 1     
DCMAKE_INSTALL_SO_NO_EXE              1     
DCMAKE_TOOLCHAIN_FILE                 1     
DCMAKE_VERBOSE_MAKEFILE               1     
DDAEMON_UMASK                         1     
DEBIAN                                1     
DEBIANNAME_                           2     
DEBIAN_MIRROR                         12    
DEBIAN_NAMES                          6     
DEBIAN_NOAUTONAME_                    3     
DEBUG                                 2     
DEBUG_LL                              1     
DEB_PACKAGE_INDEX_CLEAN               1     
DEFAULT                               1     
DEFAULT_PREFERENCE_                   14    
DENABLE_DNS                           1     
DEPCHAIN_POST                         1     
DEPCHAIN_PRE                          1     
DEPENDENCY_CHECK                      1     
DEPENDPATH                            1     
DEPENDS_                              30    
DEPENDS_GETTEXT                       4     
DEPLOYDIR                             4     
DEPLOY_DIR                            7     
DEPLOY_DIR_DEB                        2     
DEPLOY_DIR_IMAGE                      13    
DEPLOY_DIR_IPK                        3     
DEPLOY_DIR_RPM                        2     
DEPLOY_DIR_SRC                        1     
DEPLOY_DIR_TAR                        1     
DEPLOY_KEEP_PACKAGES                  2     
DEPMOD                                2     
DER                                   1     
DESCRIPTION_                          8     
DESCRIPTON                            6     
DEVEL_PREFIX                          1     
DFACILITY                             1     
DHAVE_ANIMATION                       1     
DHAVE_STRERROR                        1     
DHAVE_WEAKSYMS                        1     
DHCP                                  1     
DHOSTS_ACCESS                         2     
DHOSTS_ALLOW                          1     
DHOSTS_DENY                           1     
DIGIT                                 1     
DINET                                 1     
DISCLAIMER                            1     
DISPC_VID_FIR                         1     
DISPLAY                               3     
DISTRO_EXTRA_DEPENDS                  1     
DISTRO_SSH_DAEMON                     1     
DISTUTILS_BUILD_ARGS                  1     
DISTUTILS_INSTALL_ARGS                1     
DISTUTILS_STAGE_ALL_ARGS              1     
DISTUTILS_STAGE_HEADERS_ARGS          1     
DKILL_IP_OPTIONS                      1     
DLIB                                  2     
DLINK_SIZE                            1     
DM                                    1     
DMA                                   1     
DNDEBUG                               1     
DNETGROUP                             1     
DNS                                   2     
DO                                    1     
DOCS                                  1     
DOLT                                  3     
DONE                                  1     
DOS                                   4     
DOSRC                                 1     
DPKG_ARCH                             1     
DPKG_ARCH_                            1     
DPM                                   1     
DPROCESS_OPTIONS                      1     
DPTC                                  1     
DRI                                   6     
DRPM_VENDOR_WINDRIVER                 1     
DSI                                   1     
DSO                                   3     
DSP                                   1     
DSS                                   3     
DSYS_ERRLIST_DEFINED                  1     
DUSE_GETDOMAIN                        1     
DVF                                   1     
DVFS                                  1     
DWITH_GNOME                           1     
DWITH_KDE                             1     
DWITH_MOZJS                           1     
DWITH_NM                              1     
DWITH_PERL                            1     
DWITH_PYTHON                          1     
DWITH_WEBKIT                          1     
D_FILE_OFFSET_BITS                    1     
D_GNU_SOURCE                          7     
D_REENTRANT                           3     
D__FILE_OFFSET_BITS                   1     
D__MIPSEB__                           1     
D__MIPSEL__                           1     
D__SOFTFP__                           1     
ED                                    2     
EDID                                  1     
EDL                                   1     
EDS                                   1     
EDT                                   1     
EET                                   1     
EGLIBC_BRANCH                         2     
ELF                                   2     
ELFF                                  1     
END                                   2     
ENGR                                  1     
ENHANCED_IMAGE_FEATURES               1     
ENOENT                                1     
EOF                                   4     
EPL                                   1     
ERR                                   2     
ERROR                                 2     
ERROR_NAMES                           1     
EST                                   1     
ETCDIR                                1     
EVENTLOG                              1     
EVIE                                  1     
EVM                                   1     
EXCEPTION                             2     
EXCLUDE_FROM                          1     
EXCLUDE_FROM_SHLIBS                   1     
EXCLUDE_FROM_WORLD                    10    
EXIF                                  1     
EXPAT                                 2     
EXPATINCPATH                          1     
EXPATLIBPATH                          1     
EXPORT_FUNCTIONS                      24    
EXTENDPV                              2     
EXTERN                                1     
EXTERNAL_TOOLCHAIN                    1     
EXTRAOPKGCONFIG                       1     
EXTRAS                                2     
EXTRA_AUTORECONF                      4     
EXTRA_CFLAGS                          1     
EXTRA_CPANFLAGS                       2     
EXTRA_DIST                            3     
EXTRA_IMAGEDEPENDS                    1     
EXTRA_NATIVE_PKGCONFIG_PATH           1     
EXTRA_OECONF_                         12    
EXTRA_OEMAKE_                         2     
EXTRA_OEMAKE_NETGROUP                 1     
EXTRA_OEMAKE_NETGROUP_                1     
EXTRA_QMAKEVARS_POST                  1     
EXTRA_QMAKEVARS_PRE                   1     
EXTRA_RDEPENDS                        1     
EXTRA_RDEPENDS_                       1     
EXTRA_SIPTAGS                         1     
FACILITY                              1     
FAIL                                  1     
FAILURE                               1     
FAKEROOT                              4     
FAKEROOTENV                           1     
FAM                                   1     
FAT                                   2     
FATAL                                 1     
FB                                    3     
FC_GLYPHNAME                          1     
FC_LANG                               1     
FDL                                   3     
FEAT                                  1     
FEATURES                              2     
FEC                                   1     
FEED_URIS                             1     
FF                                    1     
FILEMANAGER                           1     
FILEMANAGER_                          1     
FILERDEPENDSFLIST                     1     
FILERDEPENDSFLIST_                    1     
FILERDEPENDS_                         1     
FILERPROVIDESFLIST                    1     
FILERPROVIDESFLIST_                   1     
FILERPROVIDES_                        1     
FILESDIR                              11    
FILESEXTRAPATHS                       1     
FILESPATH                             10    
FILESPATHBASE                         1     
FILESPATHPKG                          2     
FILES_                                179   
FILE_DIRNAME                          11    
FINISHED                              1     
FIR                                   1     
FIXEDSRCDATE                          1     
FIXMESTAGINGDIR                       1     
FLAC                                  1     
FLIST                                 1     
FLIST_                                1     
FONTREV                               1     
FREEDESKTOP_CVS                       1     
FSL                                   1     
FTL                                   1     
FULL_OPTIMIZATION_                    2     
F_OK                                  1     
GB                                    3     
GBARR                                 2     
GCONF_CONFIG_SOURCE                   1     
GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL 2     
GCONV_PATH                            1     
GD                                    1     
GDBPROPREFIX                          1     
GDK                                   3     
GDK_PIXBUF_MODULEDIR                  1     
GDK_PIXBUF_QUERYLOADERS               1     
GFDL                                  1     
GIT_CONFIG                            1     
GIT_CORE_CONFIG                       1     
GIT_PROXY_COMMAND                     1     
GIT_PROXY_IGNORE                      1     
GL                                    9     
GLEW                                  1     
GLIBC_ADDONS                          2     
GLIBC_BROKEN_LOCALES                  3     
GLIBC_DEPENDENCIES                    1     
GLIBC_EXTRA_OECONF                    2     
GLIBC_GENERATE_LOCALES                1     
GLIBC_INTERNAL_USE_BINARY_LOCALE      2     
GLSL_CL                               1     
GMAE                                  2     
GMP                                   1     
GMT                                   2     
GNOME_MIRROR                          2     
GNU_HASH                              1     
GO                                    3     
GP                                    1     
GPE_MIRROR                            1     
GPGME                                 2     
GPIO                                  2     
GPIO_POWERON                          2     
GPL_V                                 1     
GPS                                   1     
GR                                    1     
GROFF_FONT_PATH                       1     
GROFF_TMAC_PATH                       1     
GRUB                                  1     
GS                                    4     
GSSDP                                 1     
GTK_                                  1     
GUP                                   3     
HACK                                  4     
HAL_INFO_                             1     
HANDHELDS_CVS                         1     
HASDOCBOOK                            1     
HCI                                   1     
HDDDIR                                2     
HDDIMG                                1     
HEAD                                  2     
HEADERS                               2     
HNP                                   1     
HOME                                  2     
HOST                                  1     
HOSTPERL                              1     
HOSTPGEN                              1     
HOSTPYTHON                            1     
HOSTTOOLS_WHITELIST_                  1     
HOST_AR                               1     
HOST_ARCH                             9     The name of the target architecture. Normally same as the TARGET_ARCH. @see TARGET_ARCH @group base
HOST_AR_KERNEL_ARCH                   1     
HOST_CC                               1     
HOST_CC_ARCH                          5     Normally same as the TARGET_CC_ARCH. @see TARGET_CC_ARCH @group base
HOST_CC_KERNEL_ARCH                   2     
HOST_CFLAGS                           1     
HOST_CXX                              1     
HOST_CXXFLAGS                         1     
HOST_DATA                             1     
HOST_LDFLAGS                          1     
HOST_LD_KERNEL_ARCH                   2     
HOST_LIBIDL_CFLAGS                    1     
HOST_LIBIDL_CONFIG                    1     
HOST_LIBIDL_LIBS                      1     
HOST_NONSYSV                          1     
HOST_OS                               7     
HOST_PREFIX                           10    Normally same as the TARGET_PREFIX. @see TARGET_PREFIX @group base
HOST_RANLIB                           1     
HOST_SYS                              21    FIXME
HOST_VENDOR                           6     The name of the vendor. Normally same as the TARGET_VENDOR. @see TARGET_VENDOR
HOTPLUG                               1     
HST                                   1     
HTTP                                  5     
IAPI                                  1     
IBM                                   1     
ICE                                   1     
ICECC_CC                              1     
ICECC_CXX                             1     
ICECC_ENV_EXEC                        1     
ICECC_PATH                            1     
ICECC_USER_CLASS_BL                   1     
ICECC_USER_PACKAGE_BL                 1     
ICECC_VERSION                         1     
ID                                    4     
IDL                                   1     
IDN                                   2     
IDNA                                  2     
IETF                                  2     
IFS                                   1     
IGEP                                  1     
II                                    1     
IMAGE                                 1     
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
IN                                    1     
INCDIR                                2     
INCL                                  1     
INCLUDEPATH                           1     
INCLUDES                              2     
INCOMPATIBLE_LICENSE                  1     
INC_PR                                5     
INFO                                  1     
INHIBIT_AUTOTOOLS_DEPS                2     
INHIBIT_AUTO_STAGE                    1     
INHIBIT_DEFAULT_DEPS                  13    
INIT                                  1     
INITRD                                2     
INITSCRIPT_PARAMS_                    1     
INIT_D_DIR                            1     
INSANE_SKIP_                          4     
INSTALL                               1     
INSTALLED_PACKAGES                    2     
INSTALLROOT                           3     
INSTALL_DIR                           1     
INSTALL_HDR_PATH                      2     
INSTALL_INC                           1     
INSTALL_LIB                           1     
INSTALL_MAN                           1     
INSTALL_MOD_PATH                      2     
INSTALL_ROOT                          2     
INS_BASE                              1     
INTERFACES                            1     
INTERN                                1     
INVALID                               3     
IO                                    2     
IOE                                   4     
IOEINCDIR                             1     
IPC                                   2     
IPKGCONF_SDK                          3     
IPKGCONF_TARGET                       4     
IPKG_ARGS                             1     
IPKG_HOST                             2     
IPKG_OFFLINE_ROOT                     3     
IPKG_TARGET                           1     
IPK_FEED_URIS                         1     List of ipkg feed records to put into generated image.
IPK_PACKAGE_INDEX_CLEAN               1     
IPU                                   1     
IROOT                                 1     
IRQ                                   3     
ISC                                   3     
ISO                                   3     
ISODIR                                1     
ISP                                   1     
JFIF                                  1     
JL                                    1     
JPEG                                  2     
JS_EDITLINE                           1     
KBRANCH                               1     
KDIR                                  1     
KERNELDIR                             1     
KERNELORG_MIRROR                      15    
KERNEL_ALT_IMAGETYPE                  1     
KERNEL_AR                             2     
KERNEL_ARSUFFIX                       1     
KERNEL_CC                             5     
KERNEL_CCSUFFIX                       2     
KERNEL_CONSOLE                        1     
KERNEL_FEATURES                       1     
KERNEL_IMAGEDEST                      1     
KERNEL_IMAGE_BASE_NAME                2     
KERNEL_IMAGE_MAXSIZE                  1     
KERNEL_IMAGE_SYMLINK_NAME             2     
KERNEL_LD                             4     
KERNEL_LDSUFFIX                       2     
KERNEL_LOCALVERSION                   1     
KERNEL_MAJOR_VERSION                  1     
KERNEL_OBJECT_SUFFIX                  1     
KERNEL_OUTPUT                         2     
KERNEL_PATH                           1     
KERNEL_PRIORITY                       1     
KERNEL_RELEASE                        1     
KERNEL_REVISION_CHECKING              1     
KERNEL_SOURCE                         2     
KERNEL_SRC                            1     
KERNEL_VERSION                        6     
KEXECTOOLS                            1     
KEXECTOOLS_                           1     
KILL_OPT                              1     
KMACHINE                              1     
KMACHINE_                             1     
KV                                    1     
LABEL                                 1     
LABELS                                5     
LAME                                  1     
LAN                                   2     
LAYER_CONF_VERSION                    1     
LCD                                   2     
LCONF_VERSION                         1     
LCRYPT                                1     
LC_ALL                                2     
LDFLAGS                               32    
LDFLAGS_                              2     
LD_                                   1     
LD_LIBRARY_PATH                       3     
LD_PRELOAD                            1     
LEAD_SONAME                           12    
LESSER                                3     
LGPL                                  117   
LGPL_EXCEPTION                        1     
LGPV                                  1     
LIB                                   25    
LIBATA                                1     
LIBC                                  2     
LIBC_DEPENDENCIES                     1     
LIBDIR                                4     
LIBNAMES                              1     
LIBRARY                               1     
LIBS                                  6     
LIBTOOL                               6     
LIBV                                  3     
LIB_DEPS                              5     
LICENCE                               5     
LICENSE_                              4     
LICENSING                             1     
LIC_CHKSUM_FILES                      2     
LIC_FILE_CHKSUM                       1     
LINGUAS_INSTALL                       4     
LINKFILE                              1     
LINK_FOR_BUILD                        1     
LINUX_KERNEL_TYPE                     1     
LINUX_VERSION                         1     
LINUX_VERSION_EXTENSION               1     
LOCAL                                 3     
LOCALEDEF                             1     
LOCALE_GENERATION_WITH_CROSS          1     
LOCALE_UTF                            1     
LOCALPATCH                            1     
LOCALSRC                              1     
LOELIBDIR                             1     
LOG_DAEMON                            2     
LOG_DIR                               3     
LOG_FILE                              1     
LOG_INFO                              1     
LOPTS                                 1     
LR                                    1     
LSB_VERSION                           1     
LSOF_INCLUDE                          1     
LSOF_OS                               1     
LSOF_OS_                              1     
LTTDATE                               1     
LVDS                                  1     
LZMA                                  1     
MAC                                   1     
MACHINE_ARCH                          27    
MACHINE_ESSENTIAL_EXTRA_RDEPENDS      2     
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS   2     
MACHINE_POSTPROCESS_COMMAND           1     
MAINTAINERS                           2     
MAJOR_KERNEL_VERSION                  1     
MAJOR_VERSION                         1     
MAJ_VER                               2     
MAKE                                  3     
MAKEFLAGS                             1     
MAKE_ARCH                             1     
MAKE_OS                               1     
MAKE_TARGETS                          2     
MANIFEST                              1     
MANS                                  1     
MARK                                  1     
MATCH                                 1     
MAX                                   1     
MB                                    4     
MBO                                   4     
MC                                    1     
MCW                                   1     
MD                                    4     
MDT                                   1     
MET                                   1     
METADATA_BRANCH                       2     
METADATA_REVISION                     4     
MFD                                   2     
MIDI                                  1     
MIME                                  1     
MIRRORS                               1     
MIRRORS_                              1     
MMC                                   3     
MMU                                   1     
MNCI                                  1     
MNRT                                  1     
MODULES                               1     
MOD_PV                                1     
MOZCONFIG                             1     
MOZ_OBJDIR                            1     
MP                                    2     
MPC                                   1     
MPEG                                  1     
MPL                                   7     
MS                                    2     
MST                                   1     
MULTIMACH_ARCH                        3     
MULTIMACH_HOST_SYS                    2     
MULTIMACH_TARGET_SYS                  5     
MUTEX                                 2     
MUTEX_                                2     
MUX                                   1     
MX                                    2     
MXC                                   1     
MXC_DMA_ZONE_SIZE                     1     
NAK                                   1     
NAND                                  1     
NAPI                                  1     
NATIVE_INSTALL_WORKS                  1     
NCMS                                  2     
NEEDED                                2     
NET                                   2     
NETGROUP                              1     
NETWORK_MANAGER                       1     
NEW                                   1     
NEWS                                  1     
NMEA                                  1     
NO                                    2     
NOISO                                 1     
NONE                                  1     
NOOPR                                 1     
NORESULT                              1     
NOSWABBERUPDATE                       1     
NOT                                   1     
NOTE                                  1     
NOTES                                 2     
NOW                                   1     
NPATH                                 1     
NPL                                   1     
NSS                                   1     
NZ                                    1     
OBJ                                   1     
OBJCOPY                               2     
OBJDUMP                               2     
ODBM_F                                1     
OECMAKE_BUILDPATH                     1     
OECMAKE_CXX_COMPILER                  1     
OECMAKE_CXX_FLAGS                     1     
OECMAKE_CXX_FLAGS_RELEASE             1     
OECMAKE_C_COMPILER                    1     
OECMAKE_C_FLAGS                       1     
OECMAKE_C_FLAGS_RELEASE               1     
OECMAKE_SITEFILE                      1     
OECMAKE_SOURCEPATH                    1     
OEDATADIR                             1     
OEDEBUG                               1     
OEEXECPREFIX                          1     
OEINCDIR                              1     
OELAYOUT_ABI                          1     
OELIBDIR                              1     
OEPREFIX                              1     
OEREV                                 1     
OES_BITBAKE_CONF                      1     
OEV                                   1     
OE_BINCONFIG_EXTRA_MANGLE             2     
OE_QMAKE_AR                           1     
OE_QMAKE_CC                           1     
OE_QMAKE_CFLAGS                       1     
OE_QMAKE_CXX                          1     
OE_QMAKE_CXXFLAGS                     1     
OE_QMAKE_INCDIR_QT                    1     
OE_QMAKE_LDFLAGS                      1     
OE_QMAKE_LIBDIR_QT                    1     
OE_QMAKE_LIBS_QT                      1     
OE_QMAKE_LIBS_X                       1     
OE_QMAKE_LINK                         1     
OE_QMAKE_LRELEASE                     1     
OE_QMAKE_LUPDATE                      1     
OE_QMAKE_MOC                          1     
OE_QMAKE_PLATFORM                     1     
OE_QMAKE_QDBUSCPP                     1     
OE_QMAKE_QDBUSXML                     1     
OE_QMAKE_QMAKE                        2     
OE_QMAKE_RCC                          1     
OE_QMAKE_RPATH                        1     
OE_QMAKE_STRIP                        1     
OE_QMAKE_UIC                          1     
OE_REVISION                           1     
OFFLINE_ROOT                          3     
OFFSET                                1     
OHCI                                  2     
OLD                                   1     
OLDEST_KERNEL                         2     
OLD_BASE_PACKAGE_ARCH                 2     
OLD_MULTIMACH_ARCH                    1     
OLD_PACKAGE_ARCH                      3     
OM                                    2     
OMAP                                  6     
OMAPFB                                1     
OMAPZ                                 1     
ONLY                                  1     
OPENMOKO_MIRROR                       2     
OPENMOKO_RELEASE                      2     
OPKG                                  1     
OPKGBUILDCMD                          1     
OPKG_INIT_POSITION                    2     
OPKG_INIT_POSITION_                   2     
OPKG_OFFLINE_ROOT                     3     
OPKG_POSTPROCESS_COMMANDS             1     
OPKG_PREPROCESS_COMMANDS              1     
OPSYS                                 1     
OPT                                   2     
OPT_GNUTLS                            1     
ORIGIN                                1     
ORIG_DEPENDS                          2     
ORIG_RDEPENDS                         1     
OSE                                   12    
OSL                                   3     
OTG                                   1     
OTGSC_IE_                             1     
OUT                                   1     
OUTSPECFILE                           1     
OV                                    1     
OVERRIDES                             13    
OVERRIDES_                            2     
OWL_                                  1     
PACKAGE                               1     
PACKAGEFUNCS                          3     
PACKAGELOCK                           1     
PACKAGES_                             6     
PACKAGES_DYNAMIC                      19    
PACKAGES_TO_INSTALL                   2     
PACKAGE_ARCHS                         10    
PACKAGE_ARCH_                         9     
PACKAGE_DEPENDS                       2     
PACKAGE_INSTALL                       4     
PACKAGE_INSTALL_ATTEMPTONLY           4     
PACKAGE_NO_GCONV                      1     
PACKAGE_NO_LOCALE                     1     
PACKAGE_PREPROCESS_FUNCS              4     
PAM                                   1     
PARALELL_MAKE_                        1     
PARALLEL_MAKE_                        1     
PASS                                  1     
PASTHRU_INC                           1     
PATA                                  1     
PATA_FSL                              1     
PATCHCLEANCMD                         1     
PATCHCMD                              1     
PATCHDEPENDENCY                       1     
PATCHING                              1     
PATCHRESOLVE                          1     
PATCHTOOL                             2     
PATCH_DEPENDS                         1     
PATHFIXPATCH                          1     
PATHFIXPATCH_                         1     
PATH_                                 2     
PAUSE                                 1     
PCI_CONF_FLAG                         1     
PCMCIA_MANAGER                        1     Specify which package(s) to install to handle PCMCIA slots (usually pcmcia-cs or pcmciautils).
PCRE                                  1     
PD                                    3     
PDT                                   1     
PERL                                  1     
PERLCONFIGTARGET                      1     
PERLHOSTLIB                           1     
PERLLIBDIRS                           2     
PERL_ARCHLIB                          1     
PERL_INC                              1     
PERL_LIB                              1     
PF                                    3     Package name - Package version - Package revision (PN-PV-PR)
PG                                    4     
PIC                                   3     
PID                                   4     
PIE                                   1     
PIPE                                  2     
PKG                                   6     
PKGD                                  7     
PKGDATA_DIR                           4     
PKGDEST                               8     
PKGDESTWORK                           1     
PKGFN                                 4     
PKGHIST_DIR                           2     
PKGWRITEDIRDEB                        1     
PKGWRITEDIRIPK                        1     
PKGWRITEDIRRPM                        1     
PKG_                                  12    
PKG_CONFIG                            1     
PKG_CONFIG_DIR                        3     
PKG_CONFIG_PATH                       3     
PKG_CONFIG_SYSROOT_DIR                5     
PKG_DISTRIBUTECOMMAND                 1     
PKG_DISTRIBUTEDIR                     1     
PKG_DIST_LOCAL                        1     
PNG                                   1     
POKY                                  1     
POKY_BASE_INSTALL                     4     
POKY_CONF_VERSION                     1     
POKY_DISTRO_VERSION                   1     
POKY_NATIVE_SYSROOT                   1     
POKY_TARGET_SYSROOT                   1     
POSIX                                 3     
POST                                  1     
POSTIN                                1     
POSTINPROG                            1     
POTFILES                              1     
PRC                                   1     
PREBUILT_CPUCFG                       1     
PREFERRED_PROVIDER_                   1     
PREFIX                                12    
PREMIRRORS                            1     
PREMIRRORS_                           1     
PREPROCESS_RELOCATE_DIRS              1     
PRINC                                 1     
PRINT                                 1     
PRINTING                              1     
PRIORITY                              73    Importance of package, default values are 'optional' or 'needed'.
PRIVATE_LIBS                          1     
PROFILES                              1     
PROMPT                                1     
PROTO_DEPS                            7     
PROVIDES                              50    Names for additional build time dependencies that this package will provide. @group dependencies
PROVIDES_                             5     
PRV                                   1     
PR_                                   1     
PS                                    1     
PSEUDO_RELOADED                       1     
PSF                                   1     
PST                                   1     
PSTAGING_ACTIVE                       1     
PSTAGING_DISABLED                     1     
PVM                                   1     
PWD                                   2     
PXA                                   2     
PYTHONPATH                            1     
PYTHON_BASEVERSION                    1     
PYTHON_DIR                            3     
PYTHON_MAJMIN                         1     
QA                                    1     
QA_LOGFILE                            1     
QEMUARCH                              1     
QEMUIMAGETESTS                        1     
QEMUTARGET                            1     
QEMU_OPTIONS                          1     
QEMU_OPTIONS_                         1     
QMAKESPEC                             2     
QMAKE_MKSPEC_PATH                     1     
QMAKE_PROFILES                        1     
QMAKE_VARSUBST_POST                   1     
QMAKE_VARSUBST_PRE                    1     
QPL                                   1     
QTDEMOS                               1     
QTDEMOS_                              1     
QT_CONFIG_FLAGS                       1     
QUILTRCFILE                           1     
QUILT_PATCHES                         1     
RADIUS                                1     
RAID                                  1     
RANLIB                                2     
RCONFLICTS_                           6     
REAL_DAEMON_DIR                       1     
RECIPE_COMMENTS                       1     
RECIPE_INTEL_SECTION                  1     
RECIPE_LATEST_RELEASE_DATE            1     
RECIPE_LATEST_VERSION                 1     
RECIPE_MAINTAINER                     1     
RECIPE_NO_UPDATE_REASON               1     
RECIPE_STATUS                         1     
RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES 1     
RECOMMENDS                            1     
RELEASE                               1     
REPORTSTAMP                           1     
RFC                                   2     
RMWORK_ORIG_TASK                      1     
ROC                                   1     
ROK                                   1     
ROM                                   1     
ROOT                                  7     
ROOTFS                                8     
ROOTFSBLOCKS                          1     
ROOTFS_PKGMANAGE                      5     
ROOTFS_PKGMANAGE_BOOTSTRAP            3     
ROOTFS_POSTINSTALL_COMMAND            2     
ROOTFS_POSTPROCESS_COMMAND            7     
ROOTFS_SIZE                           1     
ROOT_                                 5     
RPATH                                 2     
RPC                                   2     
RPMBUILD                              2     
RPMBUILDPATH                          1     
RPMDEPS                               1     
RPMOPTS                               1     
RPM_POSTPROCESS_COMMANDS              1     
RPM_PREPROCESS_COMMANDS               1     
RPROVIDES                             9     Names for additional run time dependencies that this package will provide.  This is used to populate the ipkg:Provides field. @group dependencies
RPROVIDES_                            17    
RPSRC                                 3     
RRECOMMENDS_                          21    
RREPLACES_                            4     
RSUGGESTS                             4     
RSZ                                   1     
RTC                                   1     
RUNNING                               1     
RUNTIME                               1     
RUNTIME_                              3     
RUNTIME_PREFIX                        1     
RX                                    2     
R_OK                                  8     
SA                                    1     
SANITY_ABIFILE                        1     
SATA                                  1     
SATO_IMAGE_FEATURES                   4     
SCCS                                  1     
SCENEFUNCS                            2     
SCHEMA                                1     
SCHEMA_FILES                          1     
SCHEMA_LOCATION                       1     
SCONF_VERSION                         1     
SCRIPT                                1     
SCSI                                  1     
SD                                    2     
SDC                                   1     
SDI                                   1     
SDIO                                  1     
SDKMACHINE                            2     
SDKPATH                               3     
SDKPATHNATIVE                         6     
SDKTARGETSYSROOT                      2     
SDK_ARCH                              8     
SDK_CC_ARCH                           3     
SDK_DEPLOY                            2     
SDK_DIR                               2     
SDK_NAME                              2     
SDK_OS                                4     
SDK_OUTPUT                            3     
SDK_PREFIX                            3     
SDK_VENDOR                            3     
SDL                                   1     
SDMA                                  1     
SDP                                   1     
SECTION_                              1     
SEL                                   1     
SEVERITY                              1     
SGX                                   1     
SH                                    1     
SHA                                   1     
SHARED                                1     
SHAREDIR                              1     
SHELL                                 1     
SHLIBSDIR                             3     
SHLIBSWORKDIR                         1     
SIGNATURE                             1     
SIGPIPE                               1     
SIG_DFL                               1     
SIM                                   2     
SIPTAGS                               1     
SIP_FEATURES                          1     
SIP_MODULES                           1     
SITE                                  1     
SITECONFIG_SYSROOTCACHE               2     
SITE_CONF_VERSION                     1     
SIZE                                  2     
SKIP                                  1     
SKIPPING                              1     
SM                                    1     
SMTP                                  1     
SOLIBS                                8     
SOLIBSDEV                             5     
SONAME                                2     
SOURCEFORGE_MIRROR                    37    
SOURCES                               2     
SOURCE_MIRROR_FETCH                   1     Switch marking build as source fetcher. Used to skip COMPATIBLE_* checking.
SPECFILE                              1     
SPECS                                 1     
SPI                                   1     
SPLASH                                1     
SRC                                   3     
SRCDATE_                              2     
SRCNAME                               5     
SRCPV                                 40    
SRCREV_                               1     
SRCREV_FORMAT                         2     
SRC_DISTRIBUTECOMMAND                 2     
SRC_DISTRIBUTEDIR                     2     
SRC_DIST_LOCAL                        1     
SRC_URI_                              43    
SREC_CMD                              1     
SREC_SKIP                             1     
SREC_VMAADDR                          1     
SRPMFILE                              1     
SSDP                                  1     
SSTATETASKS                           7     
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
STAGE_TEMP                            1     
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
STAGING_SIPDIR                        1     
STAMP                                 3     The directory that holds files to keep track of what was built.
STARTING                              1     
STOP                                  2     
STRING                                1     
STRIP                                 5     
STRIPPROG                             1     
STYLE                                 1     
ST_MODE                               3     
SU                                    1     
SUBDIR                                2     
SUBDIRS                               1     
SUCC                                  1     
SUCCESS                               1     
SUPPORTED                             2     
SVG                                   1     
SVGA                                  1     
SVNREV                                1     
SWABBER_LOGS                          1     
SWABBER_REPORT                        1     
SWAB_ORIG_TASK                        1     
SWLINUX                               1     
SYSLINUXCFG                           3     
SYSLINUXMENU                          3     
SYSLINUX_OPTS                         1     
SYSLINUX_TIMEOUT                      1     
SYSROOT_DESTDIR                       12    
SYSROOT_LOCK                          1     
SYSROOT_PREPROCESS_FUNCS              8     
SYSTEMHEADERS                         2     
SYSTEMLIBS                            2     
SYSV                                  1     
SYSVINIT_ENABLED_GETTYS               1     Specify which VTs should be running a getty, the default is 1
SYS_INCLUDES                          1     
S_IEXEC                               2     
S_IREAD                               1     
S_IRWXU                               1     
S_ISDIR                               1     
S_ISLNK                               1     
S_ISREG                               1     
S_IWRITE                              1     
TABLES                                1     
TARGET                                2     
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
TARGET_OS_ORIG                        1     
TARGET_PREFIX                         23    The prefix for the cross compile toolchain. E.g arm-linux- .
TARGET_SYS                            19    The target system is composed out of TARGET_ARCH,TARGET_VENDOR and TARGET_OS.
TARGET_VENDOR                         7     FIXME
TEMPLATE                              2     
TERMWINDOWTITLE                       2     
TEST_DIR                              1     
TEST_LOG                              1     
TEST_RESULT                           1     
TEST_SCEN                             1     
TEST_TMP                              1     
TIFF                                  1     
TIMEOUT                               2     
TINDERBOX                             1     
TINDER_AUTOBUILD                      1     
TINDER_BRANCH                         1     
TINDER_CLOBBER                        1     
TINDER_HOST                           1     
TINDER_LOG                            1     
TINDER_MACHINE                        1     
TINDER_REPORT                         1     
TINDER_TREE                           1     
TINDER_URL                            1     
TKSRC                                 2     
TLI                                   1     
TMAKEPATH                             1     
TMAKE_CONFIG                          1     
TMAKE_DEPENDPATH                      1     
TMAKE_DESTDIR                         1     
TMAKE_HEADERS                         1     
TMAKE_INCLUDEPATH                     1     
TMAKE_INTERFACES                      1     
TMAKE_LIBS                            1     
TMAKE_PROFILES                        1     
TMAKE_SOURCES                         1     
TMAKE_TARGET                          1     
TMAKE_TEMPLATE                        1     
TMIO                                  2     
TMP                                   1     
TMP_LOCALE                            1     
TO                                    1     
TOBUILD                               1     
TODO                                  1     
TOOLCHAIN_HOST_TASK                   2     
TOOLCHAIN_OPTIONS                     3     
TOOLCHAIN_OUTPUTNAME                  3     
TOOLCHAIN_TARGET_SDKTASK              1     
TOOLCHAIN_TARGET_TASK                 2     
TOP                                   2     
TOPDIR                                3     
TOTALSIZE                             1     
TRACE_LOGDIR                          1     
TRACE_LOGFILE                         1     
TTF                                   1     
TWL                                   2     
TX                                    1     
TXCSR                                 1     
TXDMA                                 1     
TXT                                   3     
TZ                                    1     
TZONES                                1     
UBOOT_ARCH                            1     
UBOOT_ENTRYPOINT                      1     
UBOOT_LOADADDRESS                     1     
UBOOT_MACHINE_                        1     
UCLIBC_BASE                           1     
UCS                                   1     
UCT                                   1     
UDC                                   2     
UDEV_EXTRAS                           1     
UE                                    1     
UMASK                                 1     
UNDEFINED                             1     
UNIX                                  3     
UP                                    2     
UPDATE                                1     
URB                                   1     
URI                                   2     
US                                    2     
USAGE                                 1     
USBCV                                 1     
USBH                                  1     
USERPTR                               1     
USE_DEVFS                             1     
USE_NLS                               2     
USE_NLS_                              1     
USE_VT                                1     
UST                                   1     
UTC                                   2     
VERSION                               3     
VFS                                   1     
VIDIOC_QUERYMENU                      1     
VIRTUAL                               3     
VIRTUAL_NAME                          2     
VIRTUAL_NAME_                         1     
VM                                    1     
VMW                                   1     
VNC                                   1     
VOLTAGE_                              2     
VPATH                                 1     
VPU                                   1     
VP_CLK_RATIO                          1     
VR                                    1     
VRAM                                  1     
VRFB                                  1     
VSYSLOG                               1     
VUSB                                  1     
WARNING                               2     
WEB                                   1     
WEB_                                  1     
WET                                   1     
WHITELIST_                            1     
WITH_ENCA                             1     
WM                                    2     
W_OK                                  2     
XAUTHORITY                            1     
XC                                    1     
XCB                                   1     
XCFLAGS                               1     
XDG                                   1     
XF                                    3     
XFCE_VERSION                          1     
XI                                    1     
XIG                                   1     
XINC                                  1     
XIP                                   1     
XK                                    1     
XKB                                   1     
XLDFLAGS                              2     
XLIB                                  1     
XLIBS_CVS                             1     
XML                                   3     
XORG_MIRROR                           1     
XORG_PN                               33    
XSERVER                               1     
XSETTINGS                             1     
XSLT                                  1     
XSUB                                  1     
XT                                    2     
XT_CFLAGS                             1     
XV                                    1     
X_OK                                  1     
YES                                   1     
YUV                                   1     
ZAURUS_UPDATER_VERSION                1     
ZIP                                   1     
ZLIB                                  2     
ZY                                    2     
_A                                    2     
_ARM                                  1     
_BCM                                  1     
_BD                                   2     
_C                                    1     
_CID_AUTO_WHITE_BALAN                 1     
_CONFIG                               2     
_CONSOLE_SERIAL_PORT                  1     
_CR                                   1     
_DATA                                 1     
_ER                                   2     
_ET                                   2     
_HEADERS                              2     
_IMAGE_FEATURES                       2     
_IN                                   2     
_K                                    1     
_L                                    1     
_LIST                                 1     
_LTLIBRARIES                          1     
_M                                    1     
_MANS                                 1     
_MN                                   2     
_MTN                                  1     
_O                                    3     
_OLPC                                 1     
_ONLY                                 1     
_OPT                                  1     
_P                                    1     
_PROG_INTLTOOL                        1     
_SCRIPTS                              1     
_SENDMAIL                             1     
_T                                    1     
_TEXINFOS                             1     
_TIMEOUT                              1     
_TIMER                                1     
_TO                                   1     
_TR                                   2     
_USE_SYSTEM_EXTENSIONS                1     
_WAP_                                 1     
_WHITELIST_                           1     
_WPASUPPLICANT                        1     
_Y                                    1     
__                                    26    
__RUNQUEUE_DO_NOT_USE_EXTERNALLY      1     

-- 
Darren Hart
Yocto Linux Kernel

--------------000500010401090606020002
Content-Type: text/x-python;
 name="bbvars.py"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="bbvars.py"

#!/usr/bin/env python

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# Copyright (C) Darren Hart <dvhart@linux.intel.com>, 2010


import sys
import getopt
import os
import os.path
import re

def usage():
    print 'Usage: %s -d FILENAME [-d FILENAME]* -m METADIR [-m MATADIR]*' % os.path.basename(sys.argv[0])
    print '  -d FILENAME         documentation file to search'
    print '  -h, --help          display this help and exit'
    print '  -m METADIR          meta directory to search for recipes'
    print '  -t FILENAME         documentation config file (for doc tags)'
    print '  -T                  Only display variables with doc tags (requires -t)'

def recipe_bbvars(recipe):
    ''' Return a unique set of every bbvar encountered in the recipe '''
    prog = re.compile("[A-Z_]+")
    vset = set()
    try:
        r = open(recipe)
    except IOError as (errno, strerror):
        print 'WARNING: Failed to open recipe ', recipe
        print strerror

    for line in r:
        # Strip any comments from the line
        line = line.rsplit('#')[0]
        vset = vset.union(set(prog.findall(line)))
    r.close()
    
    bbvars = {}
    for v in vset:
        bbvars[v] = 1

    return bbvars

def collect_bbvars(metadir):
    ''' Walk the metadir and collect the bbvars from each recipe found '''
    bbvars = {}
    for root,dirs,files in os.walk(metadir):
        for name in files:
            if name.find(".bb") >= 0:
                for key in recipe_bbvars(os.path.join(root,name)).iterkeys():
                    if bbvars.has_key(key):
                        bbvars[key] = bbvars[key] + 1
                    else:
                        bbvars[key] = 1
    return bbvars

def bbvar_is_documented(var, docfiles):
    prog = re.compile(".*($|[^A-Z_])%s([^A-Z_]|$)" % (var))
    for doc in docfiles:
        try:
            f = open(doc)
        except IOError as (errno, strerror):
            print 'WARNING: Failed to open doc ', doc
            print strerror
        for line in f:
            if prog.match(line):
                return True
        f.close()
    return False

def bbvar_doctag(var, docconf):
    prog = re.compile('^%s\[doc\] *= *"(.*)"' % (var))
    if docconf == "":
        return "?"

    try:
        f = open(docconf)
    except IOError as (errno, strerror):
        return strerror

    for line in f:
        m = prog.search(line)
        if m:
            return m.group(1)

    f.close()
    return ""

def main():
    docfiles = []
    metadirs = []
    bbvars = {}
    undocumented = []
    docconf = ""
    onlydoctags = False

    # Collect and validate input
    try:
        opts, args = getopt.getopt(sys.argv[1:], "d:hm:t:T", ["help"])
    except getopt.GetoptError, err:
        print '%s' % str(err)
        usage()
        sys.exit(2)

    for o, a in opts:
        if o in ('-h', '--help'):
            usage()
            sys.exit(0)
        elif o == '-d':
            if os.path.isfile(a):
                docfiles.append(a)
            else:
                print 'ERROR: documentation file %s is not a regular file' % (a)
                sys.exit(3)
        elif o == '-m':
            if os.path.isdir(a):
                metadirs.append(a)
            else:
                print 'ERROR: meta directory %s is not a directory' % (a)
                sys.exit(4)
        elif o == "-t":
            if os.path.isfile(a):
                docconf = a
        elif o == "-T":
            onlydoctags = True
        else:
            assert False, "unhandled option"

    if len(docfiles) == 0:
        print 'ERROR: no docfile specified'
        usage()
        sys.exit(5)

    if len(metadirs) == 0:
        print 'ERROR: no metadir specified'
        usage()
        sys.exit(6)

    if onlydoctags and docconf == "":
        print 'ERROR: no docconf specified'
        usage()
        sys.exit(7)

    # Collect all the variable names from the recipes in the metadirs
    for m in metadirs:
        for key,cnt in collect_bbvars(m).iteritems():
            if bbvars.has_key(key):
                bbvars[key] = bbvars[key] + cnt
            else:
                bbvars[key] = cnt 

    # Check each var for documentation
    varlen = 0
    for v in bbvars.iterkeys():
        if len(v) > varlen:
            varlen = len(v)
        if not bbvar_is_documented(v, docfiles):
            undocumented.append(v)
    undocumented.sort()
    varlen = varlen + 1

    # Report all undocumented variables
    print 'Found %d undocumented bb variables (out of %d):' % (len(undocumented), len(bbvars))
    header = '%s%s%s' % (str("VARIABLE").ljust(varlen), str("COUNT").ljust(6), str("DOCTAG").ljust(7))
    print header
    print str("").ljust(len(header), '=')
    for v in undocumented:
        doctag = bbvar_doctag(v, docconf)
        if not onlydoctags or not doctag == "":
            print '%s%s%s' % (v.ljust(varlen), str(bbvars[v]).ljust(6), doctag)


if __name__ == "__main__":
    main()

--------------000500010401090606020002--
