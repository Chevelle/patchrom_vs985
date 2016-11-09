.class public Lcom/android/server/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"

# interfaces
.implements Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;
.implements Lcom/android/server/wifi/WifiNative$WifiRssiEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;,
        Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;,
        Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;,
        Lcom/android/server/wifi/WifiStateMachine$DefaultState;,
        Lcom/android/server/wifi/WifiStateMachine$InitialState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;,
        Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;,
        Lcom/android/server/wifi/WifiStateMachine$ScanModeState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;,
        Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;,
        Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;,
        Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;,
        Lcom/android/server/wifi/WifiStateMachine$RoamingState;,
        Lcom/android/server/wifi/WifiStateMachine$ConnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;,
        Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;,
        Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;,
        Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;,
        Lcom/android/server/wifi/WifiStateMachine$TetheringState;,
        Lcom/android/server/wifi/WifiStateMachine$TetheredState;,
        Lcom/android/server/wifi/WifiStateMachine$UntetheringState;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_START_PNO:Ljava/lang/String; = "com.android.server.WifiManager.action.START_PNO"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ADD_OR_UPDATE_SOURCE:I = -0x3

.field static final BASE:I = 0x20000

.field private static final BOOT_DEFAULT_WIFI_COUNTRY_CODE:Ljava/lang/String; = "ro.boot.wificountrycode"

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final CMD_ACCEPT_UNVALIDATED:I = 0x20099

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ASSOCIATED_BSSID:I = 0x20093

.field static final CMD_AUTO_CONNECT:I = 0x2008f

.field static final CMD_AUTO_ROAM:I = 0x20091

.field static final CMD_AUTO_SAVE_NETWORK:I = 0x20092

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_DELAYED_NETWORK_DISCONNECT:I = 0x20057

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field static final CMD_DISABLE_EPHEMERAL_NETWORK:I = 0x20062

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DISCONNECTING_WATCHDOG_TIMER:I = 0x20060

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_FIRMWARE_ALERT:I = 0x20064

.field static final CMD_GET_CAPABILITY_FREQ:I = 0x2003c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_GET_CONNECTION_STATISTICS:I = 0x2004c

.field static final CMD_GET_LINK_LAYER_STATS:I = 0x2003f

.field static final CMD_GET_MATCHING_CONFIG:I = 0x20063

.field static final CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS:I = 0x2003e

.field static final CMD_GET_SUPPORTED_FEATURES:I = 0x2003d

.field static final CMD_IP_CONFIGURATION_LOST:I = 0x2008b

.field static final CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x2008a

.field static final CMD_IP_REACHABILITY_LOST:I = 0x20095

.field static final CMD_NETWORK_STATUS:I = 0x20094

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER:I = 0x2005d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_PNO_NETWORK_FOUND:I = 0x2009c

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x2008e

.field static final CMD_REMOVE_APP_CONFIGURATIONS:I = 0x20061

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REMOVE_USER_CONFIGURATIONS:I = 0x20098

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SIM_NETWORKS:I = 0x20065

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RESTART_AUTOJOIN_OFFLOAD:I = 0x2009a

.field static final CMD_ROAM_WATCHDOG_TIMER:I = 0x2005e

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_RSSI_THRESHOLD_BREACH:I = 0x200a4

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SCREEN_STATE_CHANGED:I = 0x2005f

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_STARTED_GSCAN_DBG:I = 0x2009f

.field static final CMD_STARTED_PNO_DBG:I = 0x2009b

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_IP_PACKET_OFFLOAD:I = 0x200a0

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_RSSI_MONITORING_OFFLOAD:I = 0x200a2

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_IP_PACKET_OFFLOAD:I = 0x200a1

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_RSSI_MONITORING_OFFLOAD:I = 0x200a3

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TARGET_BSSID:I = 0x2008d

.field static final CMD_TEST_NETWORK_DISCONNECT:I = 0x20059

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNWANTED_NETWORK:I = 0x20090

.field static final CMD_UPDATE_ASSOCIATED_SCAN_PERMISSION:I = 0x2009e

.field static final CMD_UPDATE_LINKPROPERTIES:I = 0x2008c

.field static final CONNECTED_SHORT_SCANS_DURATION_MILLI:I = 0x1d4c0

.field public static final CONNECT_MODE:I = 0x1

.field private static final CONNECT_TIMEOUT_MSEC:I = 0xbb8

.field private static final CUSTOMIZED_SCAN_SETTING:Ljava/lang/String; = "customized_scan_settings"

.field private static final CUSTOMIZED_SCAN_WORKSOURCE:Ljava/lang/String; = "customized_scan_worksource"

.field private static DBG:Z = false

.field private static final DEBUG_PARSE:Z = false

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field public static final DFS_RESTRICTED_SCAN_REQUEST:I = -0x6

.field static final DISCONNECTED_SHORT_SCANS_DURATION_MILLI:I = 0x1d4c0

.field static final DISCONNECTING_GUARD_TIMER_MSEC:I = 0x1388

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final ENABLE_WIFI:I = -0x5

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final FAILURE:I = -0x1

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final GOOGLE_OUI:Ljava/lang/String; = "DA-A1-19"

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final IE_STR:Ljava/lang/String; = "ie="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final LINK_FLAPPING_DEBOUNCE_MSEC:I = 0x1b58

.field private static MESSAGE_HANDLING_STATUS_DEFERRED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_DISCARD:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_FAIL:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_LOOPED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OBSOLETE:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_OK:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_REFUSED:I = 0x0

.field private static MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NETWORKTYPE_UNTRUSTED:Ljava/lang/String; = "WIFI_UT"

.field private static final NETWORK_STATUS_UNWANTED_DISABLE_AUTOJOIN:I = 0x2

.field private static final NETWORK_STATUS_UNWANTED_DISCONNECT:I = 0x0

.field private static final NETWORK_STATUS_UNWANTED_VALIDATION_FAILED:I = 0x1

.field static final OBTAINING_IP_ADDRESS_GUARD_TIMER_MSEC:I = 0x9c40

.field private static final ONE_HOUR_MILLI:I = 0x36ee80

.field private static PDBG:Z = false

.field public static final PNO_NETWORK_FOUND_SOURCE:I = -0x7

.field private static final PNO_START_REQUEST:I = 0x0

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final ROAM_GUARD_TIMER_MSEC:I = 0x3a98

.field private static final SCAN_ALARM_SOURCE:I = -0x2

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field static final SCAN_PERMISSION_UPDATE_THROTTLE_MILLI:J = 0x4e20L

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_REQUEST_BUFFER_MAX_SIZE:I = 0xa

.field private static final SCAN_REQUEST_TIME:Ljava/lang/String; = "scan_request_time"

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0xa0

.field private static final SET_ALLOW_UNTRUSTED_SOURCE:I = -0x4

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TSF_STR:Ljava/lang/String; = "tsf="

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field private static USE_PAUSE_SCANS:Z = false

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field static final frameworkMinScanIntervalSaneValue:I = 0x2710

.field private static mLogMessages:Z = false

.field private static mNotZero:Ljava/util/regex/Pattern; = null

.field private static mPnoResultFound:I = 0x0

.field private static mRandom:Ljava/util/Random; = null

.field static mRestartAutoJoinOffloadCounter:I = 0x0

.field private static final maxFullBandConnectedTimeIntervalMilli:J = 0x493e0L

.field private static sScanAlarmIntentCount:I

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private didBlackListBSSID:Z

.field disconnectingWatchdogCount:I

.field private fullBandConnectedTimeIntervalMilli:J

.field private lastConnectAttemptTimestamp:J

.field private lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastFullBandConnectedTimeMilli:J

.field private lastLinkLayerStatsUpdate:J

.field private lastOntimeReportTimeStamp:J

.field private lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

.field private lastScanDuration:J

.field private lastScanFreqs:Ljava/lang/String;

.field private lastScreenStateChangeTimeStamp:J

.field private lastStartScanTimeStamp:J

.field private linkDebouncing:Z

.field private mAggressiveHandover:I

.field private mAlarmEnabled:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoRoaming:I

.field private final mBackgroundScanSupported:Z

.field mBadLinkspeedcount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBufferedScanMsg:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field mConnectedModeGScanOffloadStarted:Z

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectionRequests:I

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private final mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentAssociateNetworkId:I

.field private mDefaultCountryCode:Ljava/lang/String;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDelayedStopCounter:I

.field private mDhcpActive:Z

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

.field private mDisconnectedPnoAlarmCount:I

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectedTimeStamp:J

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverSetCountryCode:Ljava/lang/String;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEnableAssociatedNetworkSwitchingInDevSettings:Z

.field private mEnableRssiPolling:Z

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field mGScanPeriodMilli:J

.field mGScanStartTimeMilli:J

.field private mHalBasedPnoDriverSupported:Z

.field private mHalBasedPnoEnableInDevSettings:Z

.field private mHalFeatureSet:I

.field private mInDelayedStop:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

.field private mIsFullScanOngoing:Z

.field private mIsRunning:Z

.field private mIsScanOngoing:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastDriverRoamAttempt:J

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field mLastScanPermissionUpdate:J

.field private mLastSignalLevel:I

.field mLazyRoamEnabled:Z

.field private mLegacyPnoEnabled:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

.field private mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNoNetworksPeriodicScan:I

.field private mNumScanResultsKnown:I

.field private mNumScanResultsReturned:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOnTime:I

.field private mOnTimeAtLastReport:I

.field private mOnTimeLastReport:I

.field private mOnTimeScan:I

.field private mOnTimeScreenStateChange:I

.field private mOnTimeStartScan:I

.field private mOnTimeThisScan:I

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field mPnoEnabled:Z

.field private mPnoIntent:Landroid/app/PendingIntent;

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRevertCountryCodeOnCellularLoss:Z

.field private mRoamFailCount:I

.field private mRoamingState:Lcom/android/internal/util/State;

.field private mRssiPollToken:I

.field private mRssiRanges:[B

.field mRunningBeaconCount:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mRxTime:I

.field private mRxTimeLastReport:I

.field private mRxTimeScan:I

.field private mRxTimeStartScan:I

.field private mRxTimeThisScan:I

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenOn:Z

.field private mSendScanResultsBroadcast:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTargetRoamBSSID:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mTxTime:I

.field private mTxTimeLastReport:I

.field private mTxTimeScan:I

.field private mTxTimeStartScan:I

.field private mTxTimeThisScan:I

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerboseLoggingLevel:I

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWhiteListedSsids:[Ljava/lang/String;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiLinkLayerStatsSupported:I

.field private mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

.field mWifiScanListener:Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private messageHandlingStatus:I

.field obtainingIpWatchdogCount:I

.field roamWatchdogCount:I

.field private targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

.field private testNetworkDisconnect:Z

.field private testNetworkDisconnectCounter:I

.field wifiScoringReport:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    return-wide v0
.end method

.method static synthetic -get100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic -get101(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    return-object v0
.end method

.method static synthetic -get102(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic -get103(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    return v0
.end method

.method static synthetic -get104(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/DummyWifiLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    return-object v0
.end method

.method static synthetic -get105(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic -get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic -get107(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get108(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    return-object v0
.end method

.method static synthetic -get109(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J

    return-wide v0
.end method

.method static synthetic -get110()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    return v0
.end method

.method static synthetic -get111(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get112(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    return v0
.end method

.method static synthetic -get113(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic -get25(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/BaseDhcpStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedPnoAlarmCount:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic -get38(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z

    return v0
.end method

.method static synthetic -get41(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    return v0
.end method

.method static synthetic -get42(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I

    return v0
.end method

.method static synthetic -get43(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get45(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get46(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return v0
.end method

.method static synthetic -get48(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    return v0
.end method

.method static synthetic -get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    return v0
.end method

.method static synthetic -get50(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide v0
.end method

.method static synthetic -get51(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic -get52(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic -get53(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    return v0
.end method

.method static synthetic -get54(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -get57(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get58(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    return v0
.end method

.method static synthetic -get59(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    return v0
.end method

.method static synthetic -get60(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get61(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic -get62(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get63(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic -get64(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic -get65(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get66(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get67(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return v0
.end method

.method static synthetic -get68(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get69(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    return v0
.end method

.method static synthetic -get70(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get71(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get73(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    return v0
.end method

.method static synthetic -get74(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return v0
.end method

.method static synthetic -get75(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get76(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get77(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic -get78(Lcom/android/server/wifi/WifiStateMachine;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic -get79(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    return v0
.end method

.method static synthetic -get80(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic -get81(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic -get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get83(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return v0
.end method

.method static synthetic -get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get85(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get86(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get87(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic -get88(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic -get89(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z

    return v0
.end method

.method static synthetic -get90(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get91(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get92(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get93(Lcom/android/server/wifi/WifiStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    return v0
.end method

.method static synthetic -get94(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get95(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get96(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get97(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get98(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object v0
.end method

.method static synthetic -get99(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    return-wide p1
.end method

.method static synthetic -set10(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedPnoAlarmCount:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    return-wide p1
.end method

.method static synthetic -set16(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    return-wide p1
.end method

.method static synthetic -set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z

    return p1
.end method

.method static synthetic -set21(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    return p1
.end method

.method static synthetic -set22(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I

    return p1
.end method

.method static synthetic -set23(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic -set24(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/IpReachabilityMonitor;)Landroid/net/IpReachabilityMonitor;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic -set25(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    return p1
.end method

.method static synthetic -set26(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic -set27(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    return p1
.end method

.method static synthetic -set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set29(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set30(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic -set31(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic -set32(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic -set33(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    return-object p1
.end method

.method static synthetic -set34(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic -set35(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return p1
.end method

.method static synthetic -set36(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    return p1
.end method

.method static synthetic -set37(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    return p1
.end method

.method static synthetic -set38(Lcom/android/server/wifi/WifiStateMachine;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    return-object p1
.end method

.method static synthetic -set39(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J

    return-wide p1
.end method

.method static synthetic -set40(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    return p1
.end method

.method static synthetic -set41(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic -set42(Lcom/android/server/wifi/WifiStateMachine;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic -set43(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return p1
.end method

.method static synthetic -set44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set45(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic -set46(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    return p1
.end method

.method static synthetic -set47(Lcom/android/server/wifi/WifiStateMachine;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set48(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set49(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set50(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -set51(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    return p1
.end method

.method static synthetic -set52(I)I
    .locals 0

    sput p0, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    return p0
.end method

.method static synthetic -set53(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set54(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/wifi/WifiStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startDisconnectedGScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startGScanConnectedModeOffload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startGScanDisconnectedModeOffload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "available"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopLazyRoam()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    .locals 1
    .param p1, "macString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromString(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap19(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "counter"    # I
    .param p2, "restart"    # Z
    .param p3, "milli"    # I
    .param p4, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p5, "workSource"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiStateMachine;->checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 0
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure(I)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;I)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleIpReachabilityLost()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->checkOrDeferScanAllowed(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "killSupplicant"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->initializeCountryCode()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearIPv4Address(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "newRssi"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->enableSoftAp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/server/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/server/wifi/WifiStateMachine;II)V
    .locals 0
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(II)V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "milli"    # I
    .param p2, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/server/wifi/WifiStateMachine;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "active"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 1
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/wifi/WifiStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->setRandomMacOui()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startConnectedGScan(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 158
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 159
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z

    .line 160
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    .line 161
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 169
    sput-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 206
    const-string/jumbo v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 236
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->mPnoResultFound:I

    .line 454
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    .line 818
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    .line 1104
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    .line 1755
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    .line 1756
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    .line 1757
    sput v4, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    .line 1758
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I

    .line 1759
    const/4 v0, -0x2

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    .line 1760
    const/4 v0, -0x3

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OBSOLETE:I

    .line 1761
    const/4 v0, -0x4

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I

    .line 1762
    const/4 v0, -0x5

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    .line 1763
    const/4 v0, -0x6

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    .line 1764
    const/4 v0, -0x7

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    .line 3863
    const-string/jumbo v0, "[1-9a-fA-F]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiStateMachine;->mNotZero:Ljava/util/regex/Pattern;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;
    .param p3, "trafficPoller"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 1115
    const-string/jumbo v2, "WifiStateMachine"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    .line 200
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 215
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mCurrentAssociateNetworkId:I

    .line 223
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableAssociatedNetworkSwitchingInDevSettings:Z

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mHalFeatureSet:I

    .line 315
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnect:Z

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 318
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    .line 319
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 325
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    .line 326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 328
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 330
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    .line 331
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 348
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 386
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetherToken:I

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 416
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 425
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 427
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 429
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    .line 435
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    .line 441
    const-string/jumbo v2, "any"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 443
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastDriverRoamAttempt:J

    .line 445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    .line 554
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedPnoAlarmCount:I

    .line 556
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 559
    const-string/jumbo v2, "GB"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Ljava/lang/String;

    .line 562
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 565
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    .line 580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    .line 587
    new-instance v2, Landroid/net/wifi/WifiConnectionStatistics;

    invoke-direct {v2}, Landroid/net/wifi/WifiConnectionStatistics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    .line 590
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    .line 709
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->testNetworkDisconnectCounter:I

    .line 728
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    .line 759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 765
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    .line 864
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 871
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    .line 929
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 933
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    .line 942
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;

    .line 945
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DefaultState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 947
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$InitialState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 949
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 951
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 953
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 955
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 957
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 962
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 964
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 966
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DriverStoppedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 968
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 970
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 972
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 974
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 976
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    .line 978
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 980
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$RoamingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$RoamingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    .line 982
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 984
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 986
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WpsRunningState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 989
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 991
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$SoftApStartedState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 993
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$TetheringState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$TetheringState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 995
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$TetheredState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$TetheredState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 997
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    .line 1026
    new-instance v2, Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanListener:Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

    .line 1055
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1064
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1082
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    .line 1087
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 1092
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 1097
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 1101
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1369
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1457
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    .line 1458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    .line 1491
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    .line 1533
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1734
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    .line 1746
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1747
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1750
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 1751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    .line 1766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1780
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1782
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1783
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    .line 1784
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    .line 1785
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    .line 1786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    .line 1787
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    .line 1788
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    .line 1789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1790
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    .line 1791
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    .line 1793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 1794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeAtLastReport:I

    .line 1795
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1796
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 1797
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1798
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1799
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1801
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 4211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 4214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    .line 1116
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1117
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1118
    new-instance v2, Landroid/net/NetworkInfo;

    const-string/jumbo v3, "WIFI"

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1120
    const-string/jumbo v2, "batterystats"

    .line 1119
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1122
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 1123
    .local v8, "b":Landroid/os/IBinder;
    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1126
    const-string/jumbo v3, "android.hardware.wifi.direct"

    .line 1125
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 1128
    new-instance v2, Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 1129
    new-instance v2, Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1130
    new-instance v2, Lcom/android/server/wifi/WifiAutoJoinController;

    .line 1131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    .line 1130
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wifi/WifiAutoJoinController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    .line 1132
    new-instance v2, Lcom/android/server/wifi/WifiMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1135
    const v3, 0x112001e

    .line 1134
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 1137
    .local v10, "enableFirmwareLogs":Z
    if-eqz v10, :cond_5

    .line 1138
    new-instance v2, Lcom/android/server/wifi/WifiLogger;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/wifi/WifiLogger;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    .line 1143
    :goto_0
    new-instance v2, Landroid/net/wifi/WifiInfo;

    invoke-direct {v2}, Landroid/net/wifi/WifiInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1144
    new-instance v2, Lcom/android/server/wifi/SupplicantStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1144
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 1146
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1148
    const-string/jumbo v2, "wifip2p"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 1149
    .local v15, "s1":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pServiceImpl:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 1151
    const-string/jumbo v2, "wifipasspoint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    .line 1153
    .local v16, "s2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 1155
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 1156
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1158
    new-instance v2, Lcom/android/server/net/NetlinkTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/wifi/WifiStateMachine$1;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/net/NetlinkTracker;-><init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    .line 1164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1170
    const-string/jumbo v2, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 1171
    const-string/jumbo v2, "com.android.server.WifiManager.action.START_PNO"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPnoIntent:Landroid/app/PendingIntent;

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1175
    const v3, 0x10e002b

    .line 1174
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 1176
    .local v13, "period":I
    const/16 v2, 0x2710

    if-ge v13, v2, :cond_0

    .line 1177
    const/16 v13, 0x2710

    .line 1179
    :cond_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1182
    const v3, 0x10e002c

    .line 1181
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNoNetworksPeriodicScan:I

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1185
    const v3, 0x10e003b

    .line 1184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1188
    const v3, 0x112001a

    .line 1187
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1191
    const v3, 0x104001d

    .line 1190
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1194
    const v3, 0x112001d

    .line 1193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    .line 1196
    const-string/jumbo v2, "ro.boot.wificountrycode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    .line 1201
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1202
    const-string/jumbo v2, "config_wifi_revert_country_code_on_cellular_loss is set, but there is no default country code!! Resetting ..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logw(Ljava/lang/String;)V

    .line 1204
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    .line 1209
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v2, :cond_3

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1211
    const-string/jumbo v3, "wifi_country_code"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    .line 1210
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1214
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1215
    const-string/jumbo v4, "wifi_suspend_optimizations_enabled"

    const/4 v5, 0x1

    .line 1214
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1215
    const/4 v4, 0x1

    .line 1214
    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1223
    new-instance v2, Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1226
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$2;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1235
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1238
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$3;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1247
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1250
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$4;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1259
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.server.WifiManager.action.START_PNO"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1262
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1263
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1264
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1266
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$5;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1265
    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1280
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$6;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1287
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1290
    const-string/jumbo v3, "wifi_suspend_optimizations_enabled"

    .line 1289
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1291
    new-instance v4, Lcom/android/server/wifi/WifiStateMachine$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/server/wifi/WifiStateMachine$7;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Handler;)V

    .line 1290
    const/4 v5, 0x0

    .line 1289
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 1300
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/wifi/WifiStateMachine$8;-><init>(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1306
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1308
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0xa0

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 1311
    .local v14, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v14, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1313
    const-string/jumbo v2, "WifiSuspend"

    const/4 v3, 0x1

    invoke-virtual {v14, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1317
    const v3, 0x1040043

    .line 1316
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1347
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x64

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1348
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1349
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setDbg(Z)V

    .line 1352
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->start()V

    .line 1354
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "wifi_scan_available"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1356
    const-string/jumbo v2, "scan_enabled"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v12, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1114
    return-void

    .line 1140
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "period":I
    .end local v14    # "powerManager":Landroid/os/PowerManager;
    .end local v15    # "s1":Landroid/os/IBinder;
    .end local v16    # "s2":Landroid/os/IBinder;
    :cond_5
    new-instance v2, Lcom/android/server/wifi/DummyWifiLogger;

    invoke-direct {v2}, Lcom/android/server/wifi/DummyWifiLogger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    goto/16 :goto_0

    .line 1165
    .restart local v15    # "s1":Landroid/os/IBinder;
    .restart local v16    # "s2":Landroid/os/IBinder;
    :catch_0
    move-exception v9

    .line 1166
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t register netlink tracker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1205
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v13    # "period":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v2, :cond_2

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializing with and will revert to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on MCC loss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1214
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1347
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    .restart local v14    # "powerManager":Landroid/os/PowerManager;
    :cond_8
    const/16 v2, 0xbb8

    goto/16 :goto_4
.end method

.method private broadcastWifiCredentialChanged(ILandroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiCredentialEventType"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 10003
    if-eqz p2, :cond_0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10004
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10005
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ssid"

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10006
    const-string/jumbo v1, "et"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10008
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 10009
    const-string/jumbo v3, "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE"

    .line 10008
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 10002
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildIdentity(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "eapMethod"    # I
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 8104
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8105
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 8107
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 8108
    const-string/jumbo v2, "1"

    .line 8117
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8124
    :cond_2
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8125
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8128
    .local v1, "mnc":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 8109
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 8110
    const-string/jumbo v2, "0"

    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 8111
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_5
    if-ne p1, v6, :cond_6

    .line 8112
    const-string/jumbo v2, "6"

    .restart local v2    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 8114
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, ""

    return-object v3

    .line 8118
    .restart local v2    # "prefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {p3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8119
    .restart local v0    # "mcc":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 8120
    .restart local v1    # "mnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 8121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 22
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 4217
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4219
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/16 v15, 0x38

    .line 4220
    .local v15, "score":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 4221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_21

    .line 4220
    const/4 v5, 0x1

    .line 4224
    .local v5, "isBadLinkspeed":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    .line 4224
    const/4 v7, 0x1

    .line 4229
    .local v7, "isGoodLinkspeed":Z
    :goto_1
    if-eqz v5, :cond_25

    .line 4230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 4231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 4237
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    const-string/jumbo v17, " bl("

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4238
    :cond_1
    if-eqz v7, :cond_2

    const-string/jumbo v17, " gl"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    :cond_2
    const/16 v16, 0x0

    .line 4249
    .local v16, "use24Thresholds":Z
    const/4 v3, 0x0

    .line 4250
    .local v3, "homeNetworkBoost":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 4252
    .local v2, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v14

    .line 4253
    .local v14, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v2, :cond_4

    if-eqz v14, :cond_4

    .line 4254
    const-wide/16 v18, 0x2ee0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 4255
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 4256
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v17, v0

    sget v18, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 4257
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v17, v0

    .line 4258
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    .line 4257
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 4259
    const/16 v16, 0x1

    .line 4262
    :cond_3
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    .line 4263
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/BitSet;->cardinality()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4264
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    .line 4265
    const/16 v18, 0x1

    .line 4264
    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 4268
    const/4 v3, 0x1

    .line 4271
    :cond_4
    if-eqz v3, :cond_5

    const-string/jumbo v17, " hn"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4272
    :cond_5
    if-eqz v16, :cond_6

    const-string/jumbo v17, " u24"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4274
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x6

    sub-int v18, v17, v18

    .line 4275
    if-eqz v3, :cond_26

    sget v17, Landroid/net/wifi/WifiConfiguration;->HOME_NETWORK_RSSI_BOOST:I

    .line 4274
    :goto_3
    add-int v11, v18, v17

    .line 4276
    .local v11, "rssi":I
    const-string/jumbo v17, " rssi=%d ag=%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4278
    if-nez v16, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v4

    .line 4280
    :goto_4
    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_28

    const/4 v6, 0x1

    .line 4282
    .local v6, "isBadRSSI":Z
    :goto_5
    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_2a

    const/4 v9, 0x1

    .line 4284
    .local v9, "isLowRSSI":Z
    :goto_6
    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move/from16 v0, v17

    if-lt v11, v0, :cond_2c

    const/4 v8, 0x1

    .line 4287
    .local v8, "isHighRSSI":Z
    :goto_7
    if-eqz v6, :cond_7

    const-string/jumbo v17, " br"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    :cond_7
    if-eqz v9, :cond_8

    const-string/jumbo v17, " lr"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4289
    :cond_8
    if-eqz v8, :cond_9

    const-string/jumbo v17, " hr"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    :cond_9
    const/4 v10, 0x0

    .line 4292
    .local v10, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz v2, :cond_11

    .line 4293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_11

    .line 4294
    :cond_a
    if-eqz v6, :cond_2f

    .line 4295
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 4296
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 4299
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 4300
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 4302
    :cond_b
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 4303
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 4305
    :cond_c
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_d

    .line 4306
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 4308
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 4310
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 4311
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v17, v0

    if-gtz v17, :cond_f

    .line 4312
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_2e

    .line 4314
    :cond_f
    :goto_8
    const/16 v15, 0x33

    .line 4315
    const/4 v10, 0x1

    .line 4316
    const-string/jumbo v17, " p1"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    :cond_10
    :goto_9
    const-string/jumbo v17, " ticks %d,%d,%d"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    .line 4356
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 4357
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x2

    aput-object v19, v18, v20

    .line 4355
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4360
    :cond_11
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_14

    .line 4361
    const-string/jumbo v12, ""

    .line 4362
    .local v12, "rssiStatus":Ljava/lang/String;
    if-eqz v6, :cond_37

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " badRSSI "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4365
    :cond_12
    :goto_a
    if-eqz v5, :cond_13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " lowSpeed "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4366
    :cond_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "calculateWifiScore freq="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4367
    const-string/jumbo v18, " speed="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4368
    const-string/jumbo v18, " score="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4370
    const-string/jumbo v18, " -> txbadrate="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4370
    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4371
    const-string/jumbo v18, " txgoodrate="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4371
    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4372
    const-string/jumbo v18, " txretriesrate="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4372
    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4373
    const-string/jumbo v18, " rxrate="

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4373
    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4374
    const-string/jumbo v18, " userTriggerdPenalty"

    .line 4366
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4377
    .end local v12    # "rssiStatus":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v18, v20

    if-ltz v17, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_39

    .line 4378
    if-nez v6, :cond_15

    .line 4377
    if-eqz v9, :cond_39

    .line 4380
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_16

    .line 4381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 4382
    :cond_16
    const-string/jumbo v17, " ls+=%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " bad link -> stuck count ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4383
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4393
    :cond_17
    :goto_b
    const-string/jumbo v17, " [%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 4397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    mul-int/lit8 v17, v17, 0x2

    sub-int v15, v15, v17

    .line 4399
    :cond_18
    const-string/jumbo v17, ",%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4401
    if-eqz v5, :cond_3b

    .line 4402
    add-int/lit8 v15, v15, -0x4

    .line 4403
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_19

    .line 4404
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " isBadLinkspeed   ---> count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4405
    const-string/jumbo v18, " score="

    .line 4404
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4405
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4404
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4410
    :cond_19
    :goto_c
    const-string/jumbo v17, ",%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    if-eqz v6, :cond_3c

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    .line 4414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 4426
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v15, v15, v17

    .line 4427
    const-string/jumbo v17, ",%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4429
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_1b

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " badRSSI count"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4430
    const-string/jumbo v18, " lowRSSI count"

    .line 4429
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4429
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4431
    const-string/jumbo v18, " --> score "

    .line 4429
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4431
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4429
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4434
    :cond_1b
    if-eqz v8, :cond_1c

    .line 4435
    add-int/lit8 v15, v15, 0x5

    .line 4436
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_1c

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " isHighRSSI       ---> score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4438
    :cond_1c
    const-string/jumbo v17, ",%d]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    const-string/jumbo v17, " brc=%d lrc=%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4443
    const/16 v17, 0x3c

    move/from16 v0, v17

    if-le v15, v0, :cond_1d

    .line 4444
    const/16 v15, 0x3c

    .line 4445
    :cond_1d
    if-gez v15, :cond_1e

    .line 4446
    const/4 v15, 0x0

    .line 4449
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_20

    .line 4450
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v17, :cond_1f

    .line 4451
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "calculateWifiScore() report new score "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4453
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v15, v0, Landroid/net/wifi/WifiInfo;->score:I

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_20

    .line 4455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkScore(I)V

    .line 4458
    :cond_20
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    .line 4216
    return-void

    .line 4222
    .end local v2    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "homeNetworkBoost":Z
    .end local v5    # "isBadLinkspeed":Z
    .end local v6    # "isBadRSSI":Z
    .end local v7    # "isGoodLinkspeed":Z
    .end local v8    # "isHighRSSI":Z
    .end local v9    # "isLowRSSI":Z
    .end local v10    # "penalizedDueToUserTriggeredDisconnect":I
    .end local v11    # "rssi":I
    .end local v14    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v16    # "use24Thresholds":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    move/from16 v18, v0

    .line 4222
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_22

    const/4 v5, 0x1

    .restart local v5    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .end local v5    # "isBadLinkspeed":Z
    :cond_22
    const/4 v5, 0x0

    .restart local v5    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .line 4226
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    move/from16 v18, v0

    .line 4226
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_24

    const/4 v7, 0x1

    .restart local v7    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .end local v7    # "isGoodLinkspeed":Z
    :cond_24
    const/4 v7, 0x0

    .restart local v7    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .line 4233
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 4234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    goto/16 :goto_2

    .line 4275
    .restart local v2    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "homeNetworkBoost":Z
    .restart local v14    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v16    # "use24Thresholds":Z
    :cond_26
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 4278
    .restart local v11    # "rssi":I
    :cond_27
    const/4 v4, 0x1

    .local v4, "is24GHz":Z
    goto/16 :goto_4

    .line 4281
    .end local v4    # "is24GHz":Z
    :cond_28
    if-nez v4, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_29

    const/4 v6, 0x1

    .restart local v6    # "isBadRSSI":Z
    goto/16 :goto_5

    .end local v6    # "isBadRSSI":Z
    :cond_29
    const/4 v6, 0x0

    .restart local v6    # "isBadRSSI":Z
    goto/16 :goto_5

    .line 4283
    :cond_2a
    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2b

    const/4 v9, 0x1

    .restart local v9    # "isLowRSSI":Z
    goto/16 :goto_6

    .end local v9    # "isLowRSSI":Z
    :cond_2b
    const/4 v9, 0x0

    .restart local v9    # "isLowRSSI":Z
    goto/16 :goto_6

    .line 4285
    :cond_2c
    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2d

    const/4 v8, 0x1

    .restart local v8    # "isHighRSSI":Z
    goto/16 :goto_7

    .end local v8    # "isHighRSSI":Z
    :cond_2d
    const/4 v8, 0x0

    .restart local v8    # "isHighRSSI":Z
    goto/16 :goto_7

    .line 4313
    .restart local v10    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_2e
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    goto/16 :goto_8

    .line 4318
    :cond_2f
    if-eqz v9, :cond_34

    .line 4319
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 4320
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_32

    .line 4323
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_30

    .line 4324
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 4326
    :cond_30
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_31

    .line 4327
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 4329
    :cond_31
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 4331
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 4332
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v17, v0

    if-gtz v17, :cond_33

    .line 4333
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 4334
    :cond_33
    const/16 v15, 0x33

    .line 4335
    const/4 v10, 0x2

    .line 4336
    const-string/jumbo v17, " p2"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 4338
    :cond_34
    if-nez v8, :cond_10

    .line 4339
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 4340
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_36

    .line 4343
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_35

    .line 4344
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 4346
    :cond_35
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v2, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 4348
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 4349
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 4350
    const/16 v15, 0x33

    .line 4351
    const/4 v10, 0x3

    .line 4352
    const-string/jumbo v17, " p3"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 4363
    .restart local v12    # "rssiStatus":Ljava/lang/String;
    :cond_37
    if-eqz v8, :cond_38

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " highRSSI "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_a

    .line 4364
    :cond_38
    if-eqz v9, :cond_12

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " lowRSSI "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_a

    .line 4385
    .end local v12    # "rssiStatus":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd3333333333333L    # 0.3

    cmpg-double v17, v18, v20

    if-gez v17, :cond_17

    .line 4386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v17, v0

    if-lez v17, :cond_3a

    .line 4387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 4388
    :cond_3a
    const-string/jumbo v17, " ls-=%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    sget-boolean v17, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v17, :cond_17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, " good link -> stuck count ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 4390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 4389
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4407
    :cond_3b
    if-eqz v7, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_19

    .line 4408
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_c

    .line 4415
    :cond_3c
    if-eqz v9, :cond_3d

    .line 4416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 4417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v17, v0

    if-lez v17, :cond_1a

    .line 4419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    goto/16 :goto_d

    .line 4422
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 4423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    goto/16 :goto_d
.end method

.method private cancelDelayedScan()V
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1564
    return-void
.end method

.method private checkAndRestartDelayedScan(IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "counter"    # I
    .param p2, "restart"    # Z
    .param p3, "milli"    # I
    .param p4, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p5, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1572
    const/4 v0, 0x0

    return v0

    .line 1574
    :cond_0
    if-eqz p2, :cond_1

    .line 1575
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1576
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3644
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 3642
    :cond_0
    return-void
.end method

.method private checkOrDeferScanAllowed(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1772
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 1773
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 1774
    .local v0, "dmsg":Landroid/os/Message;
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2af8

    sub-long v4, v6, v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1775
    const/4 v1, 0x0

    return v1

    .line 1777
    .end local v0    # "dmsg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private chooseApChannel(I)I
    .locals 6
    .param p1, "apBand"    # I

    .prologue
    .line 5246
    if-nez p1, :cond_4

    .line 5247
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v3, v3, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 5248
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v3, v3, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 5250
    :cond_0
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    .line 5251
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "No specified 2G allowed channel list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    :cond_1
    const/4 v0, 0x6

    .line 5270
    .local v0, "apChannel":I
    :goto_0
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    .line 5271
    const-string/jumbo v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SoftAp set on channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    :cond_2
    return v0

    .line 5255
    .end local v0    # "apChannel":I
    :cond_3
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v4, v4, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 5256
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigStore:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v3, v3, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "apChannel":I
    goto :goto_0

    .line 5260
    .end local v0    # "apChannel":I
    .end local v2    # "index":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 5261
    .local v1, "channel":[I
    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 5262
    sget-object v3, Lcom/android/server/wifi/WifiStateMachine;->mRandom:Ljava/util/Random;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget v0, v1, v3

    .line 5263
    .restart local v0    # "apChannel":I
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->convertFrequencyToChannelNumber(I)I

    move-result v0

    goto :goto_0

    .line 5265
    .end local v0    # "apChannel":I
    :cond_5
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "SoftAp do not get available channel list"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    const/4 v0, 0x0

    .restart local v0    # "apChannel":I
    goto :goto_0
.end method

.method private cleanWifiScore()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 4205
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 4206
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 4207
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 4208
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-wide v2, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 4204
    return-void
.end method

.method private clearIPv4Address(Ljava/lang/String;)Z
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 4501
    :try_start_0
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 4502
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    new-instance v2, Landroid/net/LinkAddress;

    const-string/jumbo v3, "0.0.0.0/0"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 4503
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4504
    const/4 v2, 0x1

    return v2

    .line 4505
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 4506
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method private clearLinkProperties()V
    .locals 2

    .prologue
    .line 4719
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4720
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_0

    .line 4721
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4724
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 4725
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    if-eqz v0, :cond_1

    .line 4726
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    invoke-virtual {v0}, Landroid/net/IpReachabilityMonitor;->clearLinkProperties()V

    .line 4730
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 4731
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 4717
    :cond_2
    return-void

    .line 4719
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static concat([B[B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "array3"    # [B

    .prologue
    const/4 v4, 0x0

    .line 10064
    array-length v5, p0

    array-length v6, p1

    add-int/2addr v5, v6

    array-length v6, p2

    add-int v2, v5, v6

    .line 10066
    .local v2, "len":I
    array-length v5, p0

    if-eqz v5, :cond_0

    .line 10067
    add-int/lit8 v2, v2, 0x1

    .line 10070
    :cond_0
    array-length v5, p1

    if-eqz v5, :cond_1

    .line 10071
    add-int/lit8 v2, v2, 0x1

    .line 10074
    :cond_1
    array-length v5, p2

    if-eqz v5, :cond_2

    .line 10075
    add-int/lit8 v2, v2, 0x1

    .line 10078
    :cond_2
    new-array v3, v2, [B

    .line 10080
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 10081
    .local v1, "index":I
    array-length v5, p0

    if-eqz v5, :cond_3

    .line 10082
    array-length v5, p0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 10083
    const/4 v1, 0x1

    .line 10084
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget-byte v0, p0, v5

    .line 10085
    .local v0, "b":B
    aput-byte v0, v3, v1

    .line 10086
    add-int/lit8 v1, v1, 0x1

    .line 10084
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10090
    .end local v0    # "b":B
    :cond_3
    array-length v5, p1

    if-eqz v5, :cond_4

    .line 10091
    array-length v5, p1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 10092
    add-int/lit8 v1, v1, 0x1

    .line 10093
    array-length v6, p1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_4

    aget-byte v0, p1, v5

    .line 10094
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 10095
    add-int/lit8 v1, v1, 0x1

    .line 10093
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10099
    .end local v0    # "b":B
    :cond_4
    array-length v5, p2

    if-eqz v5, :cond_5

    .line 10100
    array-length v5, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    .line 10101
    add-int/lit8 v1, v1, 0x1

    .line 10102
    array-length v5, p2

    :goto_2
    if-ge v4, v5, :cond_5

    aget-byte v0, p2, v4

    .line 10103
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 10104
    add-int/lit8 v1, v1, 0x1

    .line 10102
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 10107
    .end local v0    # "b":B
    :cond_5
    return-object v3
.end method

.method private static concatHex([B[B)[B
    .locals 7
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 10112
    array-length v5, p0

    array-length v6, p1

    add-int v2, v5, v6

    .line 10114
    .local v2, "len":I
    new-array v3, v2, [B

    .line 10116
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 10117
    .local v1, "index":I
    array-length v5, p0

    if-eqz v5, :cond_0

    .line 10118
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, p0, v5

    .line 10119
    .local v0, "b":B
    aput-byte v0, v3, v1

    .line 10120
    add-int/lit8 v1, v1, 0x1

    .line 10118
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10124
    .end local v0    # "b":B
    :cond_0
    array-length v5, p1

    if-eqz v5, :cond_1

    .line 10125
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_1

    aget-byte v0, p1, v4

    .line 10126
    .restart local v0    # "b":B
    aput-byte v0, v3, v1

    .line 10127
    add-int/lit8 v1, v1, 0x1

    .line 10125
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10131
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private configureLazyRoam()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3308
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 3310
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;-><init>(Lcom/android/server/wifi/WifiNative;)V

    .line 3311
    .local v0, "params":Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_boost_threshold:I

    .line 3312
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_penalty_threshold:I

    .line 3313
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_boost_factor:I

    .line 3314
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_penalty_factor:I

    .line 3315
    const/16 v1, 0x41

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->A_band_max_boost:I

    .line 3316
    const/16 v1, 0x19

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->lazy_roam_hysteresis:I

    .line 3317
    const/16 v1, -0x4b

    iput v1, v0, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->alert_roam_rssi_trigger:I

    .line 3319
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    .line 3320
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureLazyRoam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_1
    invoke-static {v5, v0}, Lcom/android/server/wifi/WifiNative;->setLazyRoam(ZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3325
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "configureLazyRoam couldnt program params"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    return v4

    .line 3329
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    .line 3330
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "configureLazyRoam success"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_3
    return v5
.end method

.method private configurePno()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 3419
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v5

    if-nez v5, :cond_0

    return v4

    .line 3421
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v5, :cond_1

    .line 3422
    const-string/jumbo v4, "configurePno: mWifiScanner is null "

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3423
    return v8

    .line 3427
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->getPnoList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3428
    .local v1, "llist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 3429
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopPnoOffload()V

    .line 3430
    const-string/jumbo v4, "configurePno: empty PNO list "

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3431
    return v8

    .line 3433
    :cond_3
    sget-boolean v5, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v5, :cond_4

    .line 3434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configurePno: got llist size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3439
    :cond_4
    new-array v5, v4, [Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .line 3441
    .local v0, "list":[Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setPnoList([Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3442
    const-string/jumbo v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to set pno, length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    return v4

    .line 3447
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3448
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v2, v0, v4

    .line 3449
    .local v2, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    const-string/jumbo v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3450
    const-string/jumbo v6, " flags="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3451
    iget v6, v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " rssi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3452
    const-string/jumbo v6, "] "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3455
    .end local v2    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_6
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    long-to-int v4, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x2009b

    invoke-virtual {p0, v6, v8, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3457
    return v8
.end method

.method private configureSsidWhiteList()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3290
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWhiteListedSsids(Landroid/net/wifi/WifiConfiguration;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    .line 3291
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 3292
    :cond_0
    return v3

    .line 3295
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->setSsidWhitelist([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "configureSsidWhiteList couldnt program SSID list, size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3297
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v1, v1

    .line 3296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3298
    return v2

    .line 3301
    :cond_2
    const-string/jumbo v0, "configureSsidWhiteList success"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3302
    return v3
.end method

.method private convertFrequencyToChannelNumber(I)I
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 5232
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    .line 5233
    add-int/lit16 v0, p1, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 5234
    :cond_0
    const/16 v0, 0x1432

    if-lt p1, v0, :cond_1

    const/16 v0, 0x16c1

    if-gt p1, v0, :cond_1

    .line 5236
    add-int/lit16 v0, p1, -0x1432

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x22

    return v0

    .line 5238
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private enableSoftAp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5279
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5280
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->toggleInterface(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5281
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "toggleInterface failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    :cond_0
    return v3

    .line 5285
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "No interfaces to toggle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v3, "AP"

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5290
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "Firmware reloaded in AP mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5295
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5297
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v2, "Failed to start HAL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5299
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 5291
    :catch_0
    move-exception v0

    .line 5292
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to reload AP firmware "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    const/4 v5, 0x0

    .line 4479
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v3

    .line 4481
    .local v3, "pktcntPoll":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 4482
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4483
    .local v2, "lines":[Ljava/lang/String;
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, v2, v5

    .line 4484
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4485
    .local v4, "prop":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 4483
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4487
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    const-string/jumbo v8, "TXGOOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4488
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 4492
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 4489
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string/jumbo v8, "TXBAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4490
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4478
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v4    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiLinkSpeedAndFrequencyNative()V
    .locals 14

    .prologue
    const/16 v13, -0x7f

    const/4 v9, 0x0

    .line 4088
    const/4 v5, 0x0

    .line 4089
    .local v5, "newRssi":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 4090
    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 4092
    .local v3, "newFrequency":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v10}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 4094
    .local v8, "signalPoll":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 4095
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4096
    .local v2, "lines":[Ljava/lang/String;
    array-length v10, v2

    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :goto_0
    if-ge v9, v10, :cond_4

    aget-object v1, v2, v9

    .line 4097
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4098
    .local v7, "prop":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 4096
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4100
    :cond_1
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    const-string/jumbo v12, "RSSI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4101
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "newRssi":Ljava/lang/Integer;
    goto :goto_1

    .line 4102
    .end local v5    # "newRssi":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string/jumbo v12, "LINKSPEED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4103
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "newLinkSpeed":Ljava/lang/Integer;
    goto :goto_1

    .line 4104
    .end local v4    # "newLinkSpeed":Ljava/lang/Integer;
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string/jumbo v12, "FREQUENCY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4105
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "newFrequency":Ljava/lang/Integer;
    goto :goto_1

    .line 4113
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "newFrequency":Ljava/lang/Integer;
    .end local v7    # "prop":[Ljava/lang/String;
    :cond_4
    sget-boolean v9, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v9, :cond_5

    .line 4114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fetchRssiLinkSpeedAndFrequencyNative rssi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4115
    const-string/jumbo v10, " linkspeed="

    .line 4114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4115
    const-string/jumbo v10, " freq="

    .line 4114
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4118
    :cond_5
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v13, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xc8

    if-ge v9, v10, :cond_c

    .line 4123
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit16 v9, v9, -0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4124
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4135
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v6

    .line 4136
    .local v6, "newSignalLevel":I
    iget v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v6, v9, :cond_7

    .line 4137
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 4138
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 4140
    :cond_7
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4146
    .end local v6    # "newSignalLevel":I
    :goto_2
    if-eqz v4, :cond_8

    .line 4147
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 4149
    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_b

    .line 4150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 4151
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num5GhzConnected:I

    .line 4153
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4154
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    iget v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/net/wifi/WifiConnectionStatistics;->num24GhzConnected:I

    .line 4156
    :cond_a
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 4158
    :cond_b
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->updateConfiguration(Landroid/net/wifi/WifiInfo;)V

    .line 4087
    return-void

    .line 4142
    :cond_c
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4143
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    .line 4107
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lines":[Ljava/lang/String;
    .restart local v7    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 4815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 4816
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v4

    .line 4819
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 4820
    .local v3, "result":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v4, "02:00:00:00:00:00"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 4822
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4823
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4826
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string/jumbo v4, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-interface {v2, v4, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 4828
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4834
    :cond_1
    :goto_0
    return-object v3

    .line 4830
    :catch_0
    move-exception v1

    .line 4831
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WifiStateMachine"

    const-string/jumbo v5, "Error checking receiver permission"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleIPv4Failure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 5190
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_0

    .line 5192
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0}, Landroid/net/DhcpResults;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5195
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v0, :cond_1

    .line 5196
    const-string/jumbo v0, "handleIPv4Failure"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5198
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V

    .line 5189
    return-void

    .line 5190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;I)V
    .locals 5
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;
    .param p2, "reason"    # I

    .prologue
    .line 5137
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v3, :cond_0

    .line 5138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIPv4Success <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/DhcpResults;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "link address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5143
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5144
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 5145
    iget-object v3, p1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "addr":Ljava/net/Inet4Address;
    monitor-exit v4

    .line 5148
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5149
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 5150
    .local v2, "previousAddress":I
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v1

    .line 5151
    .local v1, "newAddress":I
    if-eq v2, v1, :cond_1

    .line 5152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIPv4Success, roaming and address changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5153
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 5152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5153
    const-string/jumbo v4, " got: "

    .line 5152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5156
    .end local v1    # "newAddress":I
    .end local v2    # "previousAddress":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 5157
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 5158
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V

    .line 5135
    return-void

    .line 5143
    .end local v0    # "addr":Ljava/net/Inet4Address;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private handleIpConfigurationLost()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5202
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 5203
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 5205
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 5206
    const-string/jumbo v2, "DHCP FAILURE"

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 5205
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 5211
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5201
    return-void
.end method

.method private handleIpReachabilityLost()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5218
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    if-eqz v0, :cond_0

    .line 5219
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    invoke-virtual {v0}, Landroid/net/IpReachabilityMonitor;->clearLinkProperties()V

    .line 5222
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 5223
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 5228
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 5215
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4965
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNetworkDisconnect: Stopping DHCP and clearing IP stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4966
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4967
    const-string/jumbo v2, " - "

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4967
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4968
    const-string/jumbo v2, " - "

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4968
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4969
    const-string/jumbo v2, " - "

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4969
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 4965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4971
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopRssiMonitoringOffload()I

    .line 4973
    const-string/jumbo v1, "handleNetworkDisconnect"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 4975
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    .line 4978
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 4979
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4985
    :goto_0
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 4986
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->reset()V

    .line 4987
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 4989
    iput v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    .line 4997
    const-wide/16 v2, 0x4e20

    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    .line 4999
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 5000
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_1

    .line 5001
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 5002
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 5004
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 5007
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 5010
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 5013
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const-string/jumbo v2, "any"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 5015
    iput-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 5016
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->registerDisconnected()V

    .line 5017
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4964
    return-void

    .line 4980
    :catch_0
    move-exception v0

    .line 4981
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleScanRequest(ILandroid/os/Message;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    const v12, 0x20047

    const/4 v11, 0x0

    .line 1969
    const/4 v7, 0x0

    .line 1970
    .local v7, "settings":Landroid/net/wifi/ScanSettings;
    const/4 v8, 0x0

    .line 1973
    .local v8, "workSource":Landroid/os/WorkSource;
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1976
    const-string/jumbo v9, "customized_scan_settings"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    .end local v7    # "settings":Landroid/net/wifi/ScanSettings;
    check-cast v7, Landroid/net/wifi/ScanSettings;

    .line 1977
    .local v7, "settings":Landroid/net/wifi/ScanSettings;
    const-string/jumbo v9, "customized_scan_worksource"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "workSource":Landroid/os/WorkSource;
    check-cast v8, Landroid/os/WorkSource;

    .line 1981
    .end local v7    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_0
    const/4 v4, 0x0

    .line 1982
    .local v4, "freqs":Ljava/lang/String;
    if-eqz v7, :cond_3

    iget-object v9, v7, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v9, :cond_3

    .line 1983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1984
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 1985
    .local v3, "first":Z
    iget-object v9, v7, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiChannel;

    .line 1986
    .local v1, "channel":Landroid/net/wifi/WifiChannel;
    if-nez v3, :cond_1

    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1988
    :goto_1
    iget v9, v1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1987
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1990
    .end local v1    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1994
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    .end local v3    # "first":Z
    .end local v4    # "freqs":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1996
    iget v9, p2, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v9, v8}, Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    .line 1998
    if-nez v4, :cond_4

    .line 1999
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 2000
    :cond_4
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2001
    if-eqz v8, :cond_5

    .line 2004
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mSendScanResultsBroadcast:Z

    .line 2006
    :cond_5
    return-void

    .line 2011
    :cond_6
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    if-nez v9, :cond_8

    .line 2015
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 2016
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Message;

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2018
    :cond_7
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 1968
    :goto_2
    return-void

    .line 2019
    :cond_8
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    if-nez v9, :cond_b

    .line 2022
    if-nez v4, :cond_9

    .line 2023
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 2024
    :cond_9
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_a

    .line 2026
    iget v9, p2, Landroid/os/Message;->arg1:I

    iget v10, p2, Landroid/os/Message;->arg2:I

    .line 2025
    invoke-virtual {p0, v12, v9, v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2027
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2037
    :goto_3
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_LOOPED:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2

    .line 2030
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2031
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "customized_scan_settings"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2032
    const-string/jumbo v9, "customized_scan_worksource"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2033
    iget v9, p2, Landroid/os/Message;->arg1:I

    iget v10, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v12, v9, v10, v0}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2034
    .restart local v5    # "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 2035
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine;->mBufferedScanMsg:Ljava/util/Queue;

    invoke-interface {v9, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2040
    .end local v5    # "msg":Landroid/os/Message;
    :cond_b
    sget v9, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I

    iput v9, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_2
.end method

.method private handleScreenStateChanged(Z)V
    .locals 9
    .param p1, "screenOn"    # Z

    .prologue
    const v8, 0x20056

    const/16 v7, 0x1f4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3562
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    .line 3563
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v0, :cond_0

    .line 3564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " handleScreenStateChanged Enter: screenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3565
    const-string/jumbo v1, " mUserWantsSuspendOpt="

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3565
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3566
    const-string/jumbo v1, " state "

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3566
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3567
    const-string/jumbo v1, " suppState:"

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3567
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v1}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v1

    .line 3564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 3570
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3571
    if-eqz p1, :cond_5

    .line 3572
    invoke-virtual {p0, v8, v4, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 3579
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3581
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 3582
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    .line 3583
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    .line 3585
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->cancelDelayedScan()V

    .line 3587
    if-eqz p1, :cond_9

    .line 3588
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 3589
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    .line 3590
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    .line 3593
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    .line 3592
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    .line 3596
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_7

    .line 3597
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->allowFullBandScanAndAssociated()Z

    move-result v0

    .line 3596
    if-eqz v0, :cond_7

    .line 3598
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3599
    const-string/jumbo v0, "screenOnConnected"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->startGScanConnectedModeOffload(Ljava/lang/String;)Z

    .line 3637
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "backgroundScan enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3639
    :cond_3
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleScreenStateChanged Exit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3561
    :cond_4
    return-void

    .line 3575
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3576
    invoke-virtual {p0, v8, v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    goto/16 :goto_0

    .line 3602
    :cond_6
    invoke-direct {p0, v7, v6, v6}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_1

    .line 3604
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_2

    .line 3605
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3606
    const-string/jumbo v0, "screenOnDisconnected"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->startGScanDisconnectedModeOffload(Ljava/lang/String;)Z

    goto :goto_1

    .line 3609
    :cond_8
    invoke-direct {p0, v7, v6, v6}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_1

    .line 3613
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_c

    .line 3618
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3619
    const-string/jumbo v0, "screenOffDisconnected"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->startGScanDisconnectedModeOffload(Ljava/lang/String;)Z

    goto :goto_1

    .line 3621
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v0, :cond_b

    .line 3622
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    goto :goto_1

    .line 3624
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    if-nez v0, :cond_2

    .line 3625
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto/16 :goto_1

    .line 3630
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 3631
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ScreenOffStop(enableBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->stopGScan(Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private handleSuccessfulIpConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5162
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 5163
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 5164
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 5166
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 5169
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 5171
    :cond_0
    if-eqz v0, :cond_1

    .line 5172
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 5173
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-nez v1, :cond_2

    .line 5174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WifiStateMachine: handleSuccessfulIpConfiguration and no scan results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5175
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    .line 5174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 5161
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    .line 5178
    .restart local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    iput v3, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 5184
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto :goto_0
.end method

.method private handleSupplicantConnectionLoss(Z)V
    .locals 2
    .param p1, "killSupplicant"    # Z

    .prologue
    .line 5024
    if-eqz p1, :cond_0

    .line 5025
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 5027
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnection()V

    .line 5028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 5029
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V

    .line 5020
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22

    .line 4909
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/StateChangeResult;

    .line 4910
    .local v3, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, v3, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 4915
    .local v2, "state":Landroid/net/wifi/SupplicantState;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 4917
    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4918
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v5, v3, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4923
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4925
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4926
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 4927
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v4, :cond_0

    .line 4928
    iget-object v4, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4929
    .local v0, "SSID":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 4930
    .local v1, "currentSSID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4931
    if-eqz v1, :cond_0

    .line 4932
    const-string/jumbo v4, "<unknown ssid>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4952
    .end local v0    # "SSID":Ljava/lang/String;
    .end local v1    # "currentSSID":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v3, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 4953
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiConfigStore;->isEphemeral(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 4955
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 4957
    return-object v2

    .line 4920
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0

    .line 4934
    .restart local v0    # "SSID":Ljava/lang/String;
    .restart local v1    # "currentSSID":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 4935
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    .line 4937
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4939
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 4940
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 4941
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4943
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v4, v5, :cond_0

    .line 4944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    .line 4946
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 4945
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 4947
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_1
.end method

.method private initializeCountryCode()V
    .locals 2

    .prologue
    .line 3732
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3731
    :cond_0
    :goto_0
    return-void

    .line 3734
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private isProvisioned(Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 4511
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4512
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    .line 4511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4512
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 3714
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3716
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 3717
    .local v3, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3718
    .local v0, "intf":Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 3719
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3720
    const/4 v4, 0x1

    return v4

    .line 3718
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3725
    .end local v0    # "intf":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 2664
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 2665
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    if-eqz v0, :cond_0

    .line 2666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2663
    :cond_0
    return-void
.end method

.method private macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 5400
    const/4 v5, 0x0

    .line 5401
    .local v5, "macAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5403
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/proc/net/arp"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5406
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 5408
    .local v3, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5409
    const-string/jumbo v9, "[ ]+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 5410
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x6

    if-lt v9, v10, :cond_0

    .line 5416
    const/4 v9, 0x0

    aget-object v2, v8, v9

    .line 5417
    .local v2, "ip":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v4, v8, v9

    .line 5419
    .local v4, "mac":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5420
    move-object v5, v4

    .line 5425
    .end local v2    # "ip":Ljava/lang/String;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v8    # "tokens":[Ljava/lang/String;
    :cond_1
    if-nez v5, :cond_2

    .line 5426
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Did not find remoteAddress {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "} in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 5427
    const-string/jumbo v10, "/proc/net/arp"

    .line 5426
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5436
    :cond_2
    if-eqz v7, :cond_3

    .line 5437
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v6, v7

    .line 5443
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_1
    return-object v5

    .line 5439
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 5432
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 5433
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v9, "Could not read /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5436
    if-eqz v6, :cond_4

    .line 5437
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5439
    :catch_2
    move-exception v1

    goto :goto_1

    .line 5430
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "macAddress":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 5431
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v9, "Could not open /proc/net/arp to lookup mac address"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5436
    if-eqz v6, :cond_4

    .line 5437
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 5439
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 5434
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 5436
    :goto_4
    if-eqz v6, :cond_5

    .line 5437
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5434
    :cond_5
    :goto_5
    throw v9

    .line 5439
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 5434
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 5430
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 5432
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private macAddressFromString(Ljava/lang/String;)[B
    .locals 6
    .param p1, "macString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    .line 5383
    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5384
    .local v3, "macBytes":[Ljava/lang/String;
    array-length v4, v3

    if-eq v4, v5, :cond_0

    .line 5385
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "MAC address should be 6 bytes long!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5387
    :cond_0
    new-array v2, v5, [B

    .line 5388
    .local v2, "mac":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 5389
    aget-object v4, v3, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5390
    .local v0, "hexVal":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v1

    .line 5388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5392
    .end local v0    # "hexVal":Ljava/lang/Integer;
    :cond_1
    return-object v2
.end method

.method private static makeHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 10047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10048
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, p0, v2

    .line 10049
    .local v0, "b":B
    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10051
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static makeHex([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "from"    # I
    .param p2, "len"    # I

    .prologue
    .line 10055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10056
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 10057
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int v4, p1, v0

    aget-byte v4, p0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10059
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeLinkProperties()Landroid/net/LinkProperties;
    .locals 9

    .prologue
    .line 4534
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 4537
    .local v3, "newLp":Landroid/net/LinkProperties;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 4538
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4539
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4540
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 4544
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v6}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 4545
    .local v2, "netlinkLinkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 4546
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "route$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 4547
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    .line 4549
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dns$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4552
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4553
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    .line 4558
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4561
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v6, :cond_7

    .line 4562
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 4563
    .restart local v4    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 4558
    .end local v4    # "route":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 4565
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 4568
    .restart local v0    # "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4569
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 4572
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v6, v6, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v7

    .line 4576
    return-object v3
.end method

.method private maybeInitDhcpStateMachine()V
    .locals 2

    .prologue
    .line 5083
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    if-nez v0, :cond_0

    .line 5084
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->useLegacyDhcpClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 5085
    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    .line 5082
    :cond_0
    :goto_0
    return-void

    .line 5089
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 5088
    invoke-static {v0, p0, v1}, Landroid/net/dhcp/DhcpClient;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/BaseDhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    goto :goto_0
.end method

.method private noteScanEnd()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 1942
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->closeRadioScanStats()V

    .line 1943
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1944
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1945
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1947
    :cond_0
    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1948
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    .line 1949
    const-string/jumbo v4, "[%,d ms]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1950
    .local v1, "ts":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_3

    .line 1951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " noteScanEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1952
    const-string/jumbo v5, " onTime="

    .line 1951
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1952
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1951
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1957
    .end local v1    # "ts":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_2

    .line 1959
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1963
    :goto_1
    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1941
    :cond_2
    return-void

    .line 1954
    .restart local v1    # "ts":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " noteScanEnd no scan source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1955
    const-string/jumbo v5, " onTime="

    .line 1954
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1955
    iget v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1954
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1960
    .end local v1    # "ts":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1962
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1963
    iput-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1962
    throw v4
.end method

.method private noteScanStart(ILandroid/os/WorkSource;)V
    .locals 12
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1906
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 1907
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->noteScanEnd()V

    .line 1909
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1910
    .local v2, "now":J
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    .line 1911
    iput-wide v10, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    .line 1912
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    .line 1913
    const-string/jumbo v4, "[%,d ms]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1914
    .local v1, "ts":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1915
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " noteScanStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1916
    const-string/jumbo v5, " uid "

    .line 1915
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1916
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1915
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1922
    .end local v1    # "ts":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->startRadioScanStats()V

    .line 1923
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    .line 1924
    const/4 v4, -0x2

    if-eq p1, v4, :cond_5

    .line 1926
    :goto_1
    if-eqz p2, :cond_6

    .end local p2    # "workSource":Landroid/os/WorkSource;
    :goto_2
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1928
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v7}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 1930
    new-instance v4, Landroid/os/WorkSource;

    const/16 v5, 0x3f2

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1934
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :cond_3
    :goto_3
    return-void

    .line 1918
    .restart local v1    # "ts":Ljava/lang/String;
    .restart local p2    # "workSource":Landroid/os/WorkSource;
    :cond_4
    sget-boolean v4, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " noteScanstart no scan source"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1919
    const-string/jumbo v5, " uid "

    .line 1918
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1919
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1918
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1925
    .end local v1    # "ts":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_3

    goto :goto_1

    .line 1926
    :cond_6
    new-instance p2, Landroid/os/WorkSource;

    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_2

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 9991
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 9992
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 9993
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 9994
    return-object v0
.end method

.method private static parseHex(C)I
    .locals 3
    .param p0, "ch"    # C

    .prologue
    .line 10014
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 10015
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 10016
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 10017
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 10018
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 10019
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 10021
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid hex digit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHex(Ljava/lang/String;)[B
    .locals 8
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 10027
    if-nez p1, :cond_0

    .line 10028
    new-array v5, v6, [B

    return-object v5

    .line 10031
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 10032
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a valid hex string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 10035
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [B

    .line 10036
    .local v3, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v6

    .line 10037
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 10038
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(C)I

    move-result v6

    add-int v4, v5, v6

    .line 10039
    .local v4, "val":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v0, v5

    .line 10040
    .local v0, "b":B
    aput-byte v0, v3, v2

    .line 10037
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10043
    .end local v0    # "b":B
    .end local v4    # "val":I
    :cond_2
    return-object v3
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 9966
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 9967
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 9968
    .local v0, "dstMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 9965
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 9972
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 9973
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 9974
    .local v0, "dstMsg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 9975
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 9971
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 9979
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    return-void

    .line 9980
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessageWithWhatAndArg2(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v0

    .line 9981
    .local v0, "dstMsg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9982
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 9978
    return-void
.end method

.method private sendConnectedState()V
    .locals 5

    .prologue
    .line 8774
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 8775
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8776
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v1

    .line 8777
    .local v1, "prompt":Z
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 8778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network selected by UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " prompt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8780
    :cond_0
    if-eqz v1, :cond_2

    .line 8784
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    .line 8785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "explictlySelected acceptUnvalidated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8787
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->explicitlySelected(Z)V

    .line 8791
    .end local v1    # "prompt":Z
    :cond_2
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z

    .line 8792
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 8793
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 8771
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 4838
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4839
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4840
    const-string/jumbo v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4841
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4837
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 4797
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4798
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4799
    const-string/jumbo v2, "networkInfo"

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4800
    const-string/jumbo v2, "linkProperties"

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4801
    if-eqz p1, :cond_0

    .line 4802
    const-string/jumbo v2, "bssid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4803
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_1

    .line 4804
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 4807
    :cond_1
    new-instance v1, Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    .line 4808
    .local v1, "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v2, "02:00:00:00:00:00"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 4809
    const-string/jumbo v2, "wifiInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4811
    .end local v1    # "sentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4796
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 4
    .param p1, "newRssi"    # I

    .prologue
    .line 4786
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4790
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4791
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4792
    const-string/jumbo v2, "newRssi"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4793
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4784
    return-void

    .line 4787
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 4845
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4846
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4847
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4848
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4844
    return-void
.end method

.method private setFrequencyBand()V
    .locals 4

    .prologue
    .line 3744
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3745
    const-string/jumbo v2, "wifi_frequency_band"

    const/4 v3, 0x0

    .line 3744
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3747
    .local v0, "band":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setBand(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3748
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3749
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v1, :cond_0

    .line 3750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "done set frequency band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3743
    :cond_0
    :goto_0
    return-void

    .line 3753
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to set frequency band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4857
    const/4 v0, 0x0

    .line 4859
    .local v0, "hidden":Z
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4872
    :cond_0
    const/4 v0, 0x1

    .line 4874
    :cond_1
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    .line 4875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4876
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 4875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4876
    const-string/jumbo v2, " and new state="

    .line 4875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4877
    const-string/jumbo v2, " hidden="

    .line 4875
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4879
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4881
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4882
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    .line 4883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDetailed state send new extra info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4885
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 4886
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4889
    :cond_4
    if-eqz v0, :cond_5

    .line 4890
    return v4

    .line 4893
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eq p1, v1, :cond_7

    .line 4894
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v1, :cond_6

    .line 4896
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 4898
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4899
    const/4 v1, 0x1

    return v1

    .line 4901
    :cond_7
    return v4
.end method

.method private setRandomMacOui()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1612
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 1613
    const-string/jumbo v5, "DA-A1-19"

    aput-object v5, v4, v6

    const v5, 0x104001e

    .line 1612
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "oui":Ljava/lang/String;
    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, "ouiParts":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [B

    .line 1616
    .local v1, "ouiBytes":[B
    aget-object v3, v2, v6

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 1617
    aget-object v3, v2, v7

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 1618
    aget-object v3, v2, v9

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    .line 1620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting OUI to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1621
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->setScanningMacOui([B)Z

    move-result v3

    return v3
.end method

.method private setScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1536
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v1, :cond_0

    .line 1538
    if-eqz p1, :cond_2

    const-string/jumbo v0, "enabled"

    .line 1539
    .local v0, "state":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScanAlarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1540
    const-string/jumbo v2, " defaultperiod "

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1540
    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1541
    const-string/jumbo v2, " mBackgroundScanSupported "

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1541
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 1539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1543
    .end local v0    # "state":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v1, :cond_1

    .line 1547
    const/4 p1, 0x1

    .line 1550
    .end local p1    # "enabled":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    if-ne p1, v1, :cond_3

    return-void

    .line 1538
    .restart local p1    # "enabled":Z
    :cond_2
    const-string/jumbo v0, "disabled"

    .restart local v0    # "state":Ljava/lang/String;
    goto :goto_0

    .line 1551
    .end local v0    # "state":Ljava/lang/String;
    .end local p1    # "enabled":Z
    :cond_3
    if-eqz p1, :cond_4

    .line 1554
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1556
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 1554
    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1557
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    .line 1535
    :goto_1
    return-void

    .line 1559
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1560
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mAlarmEnabled:Z

    goto :goto_1
.end method

.method private setScanResults()V
    .locals 41

    .prologue
    .line 3886
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    .line 3887
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 3888
    const-string/jumbo v16, ""

    .line 3889
    .local v16, "bssid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3890
    .local v5, "level":I
    const/4 v9, 0x0

    .line 3891
    .local v9, "freq":I
    const-wide/16 v10, 0x0

    .line 3892
    .local v10, "tsf":J
    const-string/jumbo v8, ""

    .line 3893
    .local v8, "flags":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3896
    .local v6, "wifiSsid":Landroid/net/wifi/WifiSsid;
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    .line 3897
    .local v33, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v35, 0x0

    .line 3900
    .local v35, "sid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Lcom/android/server/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v37

    .line 3901
    .local v37, "tmpResults":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3921
    :goto_0
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    .line 3923
    .local v32, "scanResults":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3924
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3925
    return-void

    .line 3902
    .end local v32    # "scanResults":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3903
    const-string/jumbo v13, "\n"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3904
    const-string/jumbo v13, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 3905
    .local v31, "lines":[Ljava/lang/String;
    const/16 v35, -0x1

    .line 3906
    move-object/from16 v0, v31

    array-length v13, v0

    add-int/lit8 v27, v13, -0x1

    .local v27, "i":I
    :goto_1
    if-ltz v27, :cond_2

    .line 3907
    aget-object v13, v31, v27

    const-string/jumbo v14, "####"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3918
    :cond_2
    :goto_2
    const/4 v13, -0x1

    move/from16 v0, v35

    if-ne v0, v13, :cond_0

    goto :goto_0

    .line 3909
    :cond_3
    aget-object v13, v31, v27

    const-string/jumbo v14, "id="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 3911
    :try_start_0
    aget-object v13, v31, v27

    const-string/jumbo v14, "id="

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v13

    add-int/lit8 v35, v13, 0x1

    goto :goto_2

    .line 3906
    :cond_4
    add-int/lit8 v27, v27, -0x1

    goto :goto_1

    .line 3928
    .end local v27    # "i":I
    .end local v31    # "lines":[Ljava/lang/String;
    .restart local v32    # "scanResults":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiConfigStore;->trimANQPCache(Z)V

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 3934
    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 3935
    const-string/jumbo v13, "\n"

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 3936
    .restart local v31    # "lines":[Ljava/lang/String;
    const-string/jumbo v13, "bssid="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    .line 3937
    .local v23, "bssidStrLen":I
    const-string/jumbo v13, "flags="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    .line 3938
    .local v25, "flagLen":I
    const/16 v29, 0x0

    .line 3939
    .local v29, "infoElements":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3941
    .local v2, "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v38, v13

    .end local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v16    # "bssid":Ljava/lang/String;
    .end local v29    # "infoElements":Ljava/lang/String;
    :goto_3
    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_16

    aget-object v30, v31, v38

    .line 3942
    .local v30, "line":Ljava/lang/String;
    const-string/jumbo v13, "bssid="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3943
    new-instance v22, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v14, v14, v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v13, v1, v14}, Ljava/lang/String;-><init>([BII)V

    .local v22, "bssid":Ljava/lang/String;
    move-object/from16 v16, v22

    .line 3941
    .end local v22    # "bssid":Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v13, v38, 0x1

    move/from16 v38, v13

    goto :goto_3

    .line 3944
    :cond_7
    const-string/jumbo v13, "freq="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_8

    .line 3946
    :try_start_2
    const-string/jumbo v13, "freq="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_4

    .line 3947
    :catch_0
    move-exception v24

    .line 3948
    .local v24, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    goto :goto_4

    .line 3950
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    :try_start_3
    const-string/jumbo v13, "level="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-eqz v13, :cond_9

    .line 3952
    :try_start_4
    const-string/jumbo v13, "level="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    .line 3956
    if-lez v5, :cond_6

    add-int/lit16 v5, v5, -0x100

    goto :goto_4

    .line 3957
    :catch_1
    move-exception v24

    .line 3958
    .restart local v24    # "e":Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    goto :goto_4

    .line 3960
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_5
    const-string/jumbo v13, "tsf="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v13

    if-eqz v13, :cond_a

    .line 3962
    :try_start_6
    const-string/jumbo v13, "tsf="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v10

    goto :goto_4

    .line 3963
    :catch_2
    move-exception v24

    .line 3964
    .restart local v24    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v10, 0x0

    goto :goto_4

    .line 3966
    .end local v24    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_7
    const-string/jumbo v13, "flags="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 3967
    new-instance v26, Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v14, v14, v25

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v0, v13, v1, v14}, Ljava/lang/String;-><init>([BII)V

    .end local v8    # "flags":Ljava/lang/String;
    .local v26, "flags":Ljava/lang/String;
    move-object/from16 v8, v26

    .end local v26    # "flags":Ljava/lang/String;
    .restart local v8    # "flags":Ljava/lang/String;
    goto/16 :goto_4

    .line 3968
    :cond_b
    const-string/jumbo v13, "ssid="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3970
    const-string/jumbo v13, "ssid="

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 3969
    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v6

    .local v6, "wifiSsid":Landroid/net/wifi/WifiSsid;
    goto/16 :goto_4

    .line 3971
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_c
    const-string/jumbo v13, "ie="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 3972
    move-object/from16 v29, v30

    .local v29, "infoElements":Ljava/lang/String;
    goto/16 :goto_4

    .line 3973
    .end local v29    # "infoElements":Ljava/lang/String;
    :cond_d
    invoke-static/range {v30 .. v30}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->isAnqpAttribute(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 3974
    if-nez v2, :cond_e

    .line 3975
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3977
    :cond_e
    move-object/from16 v0, v30

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 3933
    .end local v23    # "bssidStrLen":I
    .end local v25    # "flagLen":I
    .end local v30    # "line":Ljava/lang/String;
    .end local v31    # "lines":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v39

    throw v13

    .line 3978
    .restart local v23    # "bssidStrLen":I
    .restart local v25    # "flagLen":I
    .restart local v30    # "line":Ljava/lang/String;
    .restart local v31    # "lines":[Ljava/lang/String;
    :cond_f
    :try_start_8
    const-string/jumbo v13, "===="

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v13, "####"

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v13

    if-eqz v13, :cond_6

    .line 3979
    :cond_10
    if-eqz v16, :cond_13

    .line 3982
    :try_start_9
    new-instance v4, Lcom/android/server/wifi/hotspot2/NetworkDetail;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v4, v0, v1, v2, v9}, Lcom/android/server/wifi/hotspot2/NetworkDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 3984
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3985
    .local v7, "xssid":Ljava/lang/String;
    :goto_5
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getTrimmedSSID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 3987
    const-string/jumbo v13, "Inconsistent SSID on BSSID \'%s\': \'%s\' vs \'%s\': %s"

    .line 3986
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 3988
    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v14, v17

    const/4 v15, 0x3

    aput-object v29, v14, v15

    .line 3986
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3991
    :cond_11
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 3992
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HSNwk: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v13, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/ScanDetail;

    .line 3996
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v3, :cond_15

    .line 3997
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wifi/ScanDetail;->updateResults(Lcom/android/server/wifi/hotspot2/NetworkDetail;ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 4005
    :goto_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 4007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4012
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v7    # "xssid":Ljava/lang/String;
    :cond_13
    :goto_7
    const/16 v16, 0x0

    .line 4013
    .local v16, "bssid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4014
    const/4 v9, 0x0

    .line 4015
    const-wide/16 v10, 0x0

    .line 4016
    :try_start_a
    const-string/jumbo v8, ""
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4017
    const/4 v6, 0x0

    .line 4018
    .local v6, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/16 v29, 0x0

    .line 4019
    .local v29, "infoElements":Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_4

    .line 3984
    .end local v2    # "anqpLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v16    # "bssid":Ljava/lang/String;
    .end local v29    # "infoElements":Ljava/lang/String;
    .restart local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    :cond_14
    :try_start_b
    const-string/jumbo v7, "<unknown ssid>"

    .restart local v7    # "xssid":Ljava/lang/String;
    goto/16 :goto_5

    .line 4000
    .restart local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_15
    new-instance v3, Lcom/android/server/wifi/ScanDetail;

    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    move-object/from16 v17, v8

    move/from16 v18, v5

    move/from16 v19, v9

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v21}, Lcom/android/server/wifi/ScanDetail;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 4002
    .restart local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v13, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 4008
    .end local v3    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v4    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v7    # "xssid":Ljava/lang/String;
    :catch_3
    move-exception v28

    .line 4009
    .local v28, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_c
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to parse information elements: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .end local v28    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v30    # "line":Ljava/lang/String;
    :cond_16
    monitor-exit v39

    .line 4026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttemptTimestamp:J

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    const-wide/16 v18, 0xbb8

    cmp-long v13, v14, v18

    if-lez v13, :cond_1f

    const/4 v12, 0x1

    .line 4027
    .local v12, "attemptAutoJoin":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v36

    .line 4028
    .local v36, "state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v34

    .line 4029
    .local v34, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;

    if-eq v13, v14, :cond_17

    .line 4030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    if-ne v13, v14, :cond_20

    .line 4046
    :cond_17
    :goto_9
    const/4 v12, 0x0

    .line 4048
    :cond_18
    sget-boolean v13, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v13, :cond_1a

    .line 4049
    if-nez v34, :cond_19

    .line 4050
    const-string/jumbo v34, "<none>"

    .line 4052
    :cond_19
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wifi setScanResults state"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4053
    const-string/jumbo v14, " sup_state="

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4054
    const-string/jumbo v14, " debouncing="

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4054
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4055
    const-string/jumbo v14, " mConnectionRequests="

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4055
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4056
    const-string/jumbo v14, " selection="

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4057
    const-string/jumbo v14, " mNumScanResultsReturned "

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4057
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4058
    const-string/jumbo v14, " mScanResults "

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4058
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 4052
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4060
    :cond_1a
    if-eqz v12, :cond_1b

    .line 4061
    sget v13, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_PROCESSED:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 4064
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getDisconnectedTimeMilli()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v13, v13, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v13, v14, v18

    if-lez v13, :cond_1c

    .line 4065
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 4068
    :cond_1c
    if-eqz v12, :cond_1d

    .line 4069
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v14

    .line 4072
    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {v13, v12}, Lcom/android/server/wifi/WifiAutoJoinController;->newSupplicantResults(Z)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    monitor-exit v14

    .line 4075
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-eqz v13, :cond_1e

    .line 4080
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const v14, 0x20091

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v13, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3885
    :cond_1e
    return-void

    .line 4026
    .end local v12    # "attemptAutoJoin":Z
    .end local v34    # "selection":Ljava/lang/String;
    .end local v36    # "state":Landroid/net/wifi/SupplicantState;
    :cond_1f
    const/4 v12, 0x0

    .restart local v12    # "attemptAutoJoin":Z
    goto/16 :goto_8

    .line 4031
    .restart local v34    # "selection":Ljava/lang/String;
    .restart local v36    # "state":Landroid/net/wifi/SupplicantState;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    if-eq v13, v14, :cond_17

    .line 4032
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    if-eq v13, v14, :cond_17

    .line 4033
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v13, v14, :cond_21

    .line 4034
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 4035
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    .line 4029
    if-nez v13, :cond_17

    .line 4036
    sget-object v13, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    if-eq v0, v13, :cond_17

    .line 4037
    sget-object v13, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    if-eq v0, v13, :cond_17

    .line 4038
    sget-object v13, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    if-eq v0, v13, :cond_17

    .line 4039
    sget-object v13, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v36

    if-eq v0, v13, :cond_17

    .line 4042
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    if-nez v13, :cond_22

    if-eqz v34, :cond_17

    .line 4043
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 4029
    if-eqz v13, :cond_18

    goto/16 :goto_9

    .line 4069
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3912
    .end local v12    # "attemptAutoJoin":Z
    .end local v23    # "bssidStrLen":I
    .end local v25    # "flagLen":I
    .end local v32    # "scanResults":Ljava/lang/String;
    .end local v34    # "selection":Ljava/lang/String;
    .end local v36    # "state":Landroid/net/wifi/SupplicantState;
    .restart local v6    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .local v16, "bssid":Ljava/lang/String;
    .restart local v27    # "i":I
    :catch_4
    move-exception v24

    .restart local v24    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_2
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3788
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3789
    :cond_0
    if-eqz p2, :cond_2

    .line 3790
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3794
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3787
    :cond_1
    return-void

    .line 3792
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 7
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3758
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 3759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3760
    const-string/jumbo v1, " -want "

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3760
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3761
    const-string/jumbo v1, " stack:"

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3761
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3762
    const-string/jumbo v1, " - "

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3762
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3763
    const-string/jumbo v1, " - "

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3763
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3764
    const-string/jumbo v1, " - "

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3768
    :cond_0
    if-eqz p2, :cond_3

    .line 3769
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3771
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3772
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 3773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizationsNative do it "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3774
    const-string/jumbo v1, " stack:"

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3774
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3775
    const-string/jumbo v1, " - "

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3776
    const-string/jumbo v1, " - "

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3776
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3777
    const-string/jumbo v1, " - "

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3777
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 3773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3779
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 3757
    :cond_2
    :goto_0
    return-void

    .line 3782
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 3783
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0
.end method

.method private setWifiApState(II)V
    .locals 5
    .param p1, "wifiApState"    # I
    .param p2, "reason"    # I

    .prologue
    .line 3822
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3825
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    .line 3826
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3835
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3837
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3839
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3840
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3841
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3842
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3843
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    .line 3845
    const-string/jumbo v3, "wifi_ap_error_code"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3848
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3821
    return-void

    .line 3827
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 3828
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3830
    :catch_0
    move-exception v0

    .line 3831
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    .line 3798
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3801
    .local v2, "previousWifiState":I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 3802
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3810
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3812
    sget-boolean v3, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3814
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3815
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3816
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3817
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3818
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3797
    return-void

    .line 3803
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 3804
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3806
    :catch_0
    move-exception v0

    .line 3807
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startConnectedGScan(Ljava/lang/String;)Z
    .locals 11
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 3469
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLazyRoamEnabled:Z

    if-eqz v1, :cond_3

    .line 3470
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 3471
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 3472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3474
    .local v8, "now":J
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_4

    .line 3475
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    sub-long v4, v8, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 3476
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3488
    :goto_0
    iget v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    .line 3489
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 3490
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    .line 3491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startConnectedScan: settings band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3492
    const-string/jumbo v2, " period="

    .line 3491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3492
    iget v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3495
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanListener:Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 3497
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    long-to-int v1, v4

    const v2, 0x2009f

    invoke-virtual {p0, v2, v10, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3500
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v8    # "now":J
    :cond_3
    return v10

    .line 3478
    .restart local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v8    # "now":J
    :cond_4
    iput-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    .line 3479
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3482
    const v3, 0x249f0

    .line 3484
    .local v3, "delay":I
    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " startConnectedGScan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3485
    const-wide/32 v6, 0x249f0

    .line 3483
    const v2, 0x2009a

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 3486
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto :goto_0
.end method

.method private startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 8
    .param p1, "milli"    # I
    .param p2, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1580
    if-gtz p1, :cond_0

    return-void

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1590
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v0, :cond_3

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_1

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_3

    .line 1593
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1594
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "customized_scan_settings"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1595
    const-string/jumbo v0, "customized_scan_worksource"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1596
    const-string/jumbo v0, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1598
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v6, p1

    .line 1597
    const v2, 0x20047

    const/4 v3, -0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 1599
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDelayedScan send -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " milli "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1579
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 1600
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-nez v0, :cond_4

    .line 1601
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v0, :cond_5

    .line 1606
    :cond_4
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDelayedScan unhandled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1607
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1607
    const-string/jumbo v1, " milli "

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1601
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v0, v1, :cond_4

    .line 1602
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->setScanAlarm(Z)V

    .line 1603
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDelayedScan start scan alarm -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1604
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1604
    const-string/jumbo v1, " milli "

    .line 1603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startDisconnectedGScan(Ljava/lang/String;)Z
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3509
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v1, :cond_0

    .line 3510
    const-string/jumbo v1, "startDisconnectedGScan: no wifi scanner"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3511
    return v10

    .line 3514
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLazyRoamEnabled:Z

    if-eqz v1, :cond_4

    .line 3515
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 3516
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const/4 v1, 0x3

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 3517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3520
    .local v8, "now":J
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_5

    .line 3521
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    sub-long v4, v8, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 3522
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3534
    :goto_0
    iget v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    int-to-long v4, v1

    iput-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    .line 3535
    iput v10, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 3536
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_3

    .line 3537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDisconnectedScan: settings band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3538
    const-string/jumbo v2, " period="

    .line 3537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3538
    iget v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3540
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanListener:Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiScanner;->startBackgroundScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 3542
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    long-to-int v1, v4

    const v2, 0x2009f

    invoke-virtual {p0, v2, v11, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3545
    .end local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v8    # "now":J
    :cond_4
    return v11

    .line 3524
    .restart local v0    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    .restart local v8    # "now":J
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 3525
    iput-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    .line 3528
    const v3, 0x249f0

    .line 3530
    .local v3, "delay":I
    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " startDisconnectedGScan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3531
    const-wide/32 v6, 0x249f0

    .line 3529
    const v2, 0x2009a

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 3532
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto :goto_0
.end method

.method private startGScanConnectedModeOffload(Ljava/lang/String;)Z
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3346
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 3347
    if-nez p1, :cond_0

    .line 3348
    const-string/jumbo p1, ""

    .line 3350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGScanConnectedModeOffload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3352
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGScanConnectedModeOffload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->stopGScan(Ljava/lang/String;)Z

    .line 3353
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-nez v0, :cond_2

    return v2

    .line 3355
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_3

    .line 3356
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->pauseScan()V

    .line 3358
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->configurePno()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    .line 3359
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    if-nez v0, :cond_5

    .line 3360
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_4

    .line 3361
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3363
    :cond_4
    return v2

    .line 3365
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->configureLazyRoam()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLazyRoamEnabled:Z

    .line 3366
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLazyRoamEnabled:Z

    if-nez v0, :cond_7

    .line 3367
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_6

    .line 3368
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3370
    :cond_6
    return v2

    .line 3372
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3373
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->configureSsidWhiteList()Z

    .line 3375
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startConnectedGScan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3376
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_9

    .line 3377
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3379
    :cond_9
    return v2

    .line 3381
    :cond_a
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_b

    .line 3382
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3384
    :cond_b
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    .line 3385
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_c

    .line 3386
    const-string/jumbo v0, "startGScanConnectedModeOffload success"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3388
    :cond_c
    return v3
.end method

.method private startGScanDisconnectedModeOffload(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3392
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGScanDisconnectedModeOffload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 3395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGScanDisconnectedModeOffload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->stopGScan(Ljava/lang/String;)Z

    .line 3396
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_1

    .line 3397
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->pauseScan()V

    .line 3399
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->configurePno()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    .line 3400
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mPnoEnabled:Z

    if-nez v0, :cond_3

    .line 3401
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_2

    .line 3402
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3404
    :cond_2
    return v2

    .line 3406
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startDisconnectedGScan(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3407
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_4

    .line 3408
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3410
    :cond_4
    return v2

    .line 3412
    :cond_5
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->USE_PAUSE_SCANS:Z

    if-eqz v0, :cond_6

    .line 3413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->restartScan()V

    .line 3415
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private startScanNative(ILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "freqs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2049
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->scan(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2050
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    .line 2051
    if-nez p2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    .line 2052
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    .line 2053
    return v1

    .line 2055
    :cond_1
    return v0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x6

    const v6, 0x20017

    const/4 v5, 0x0

    .line 5310
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 5312
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 5313
    const-string/jumbo v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SoftAp config channel is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5320
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 5322
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5323
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5324
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eqz v2, :cond_2

    .line 5325
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Fail to set country code. Can not setup Softap on 5GHz"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    invoke-virtual {p0, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5328
    return-void

    .line 5332
    :cond_1
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    if-eqz v2, :cond_2

    .line 5334
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Can not setup softAp on 5GHz without country code!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    invoke-virtual {p0, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5336
    return-void

    .line 5340
    :cond_2
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v2, :cond_4

    .line 5341
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->chooseApChannel(I)I

    move-result v2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 5342
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-nez v2, :cond_4

    .line 5343
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5345
    const/4 v2, 0x1

    invoke-virtual {p0, v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 5346
    return-void

    .line 5350
    :cond_3
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 5351
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 5361
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/wifi/WifiStateMachine$9;

    invoke-direct {v3, p0, v0}, Lcom/android/server/wifi/WifiStateMachine$9;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 5308
    return-void

    .line 5357
    :cond_5
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 5358
    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_0
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 3650
    const/4 v5, 0x0

    .line 3652
    .local v5, "wifiAvailable":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3654
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 3656
    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3657
    .local v2, "intf":Ljava/lang/String;
    array-length v9, v6

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v4, v6, v7

    .line 3658
    .local v4, "regex":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3660
    const/4 v1, 0x0

    .line 3662
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3663
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v1, :cond_1

    .line 3665
    new-instance v7, Landroid/net/LinkAddress;

    .line 3666
    const-string/jumbo v9, "192.168.43.1"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    const/16 v10, 0x18

    .line 3665
    invoke-direct {v7, v9, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v7}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3667
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3669
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v2, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3676
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v2}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 3677
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error tethering on "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3678
    return v8

    .line 3671
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 3672
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error configuring interface "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3673
    return v8

    .line 3680
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_2
    iput-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 3681
    const/4 v7, 0x1

    return v7

    .line 3657
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3686
    .end local v2    # "intf":Ljava/lang/String;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_4
    return v8
.end method

.method private stopGScan(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3549
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    .line 3550
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    .line 3551
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-eqz v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanListener:Lcom/android/server/wifi/WifiStateMachine$WifiScanListener;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopBackgroundScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 3554
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    .line 3556
    const v0, 0x2009f

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 3558
    const/4 v0, 0x1

    return v0
.end method

.method private stopLazyRoam()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3338
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 3339
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 3340
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "stopLazyRoam"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiNative;->setLazyRoam(ZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z

    move-result v0

    return v0
.end method

.method private stopPnoOffload()V
    .locals 2

    .prologue
    .line 3281
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setPnoList([Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "Failed to stop pno"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    :cond_0
    return-void
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 3691
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3695
    const/4 v1, 0x0

    .line 3697
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3698
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v1, :cond_0

    .line 3700
    new-instance v2, Landroid/net/LinkAddress;

    const-string/jumbo v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 3699
    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3701
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3707
    .end local v1    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3708
    const-string/jumbo v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3689
    :cond_1
    return-void

    .line 3703
    :catch_0
    move-exception v0

    .line 3704
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static unexpectedDisconnectedReason(I)Z
    .locals 2
    .param p0, "reason"    # I

    .prologue
    const/4 v0, 0x1

    .line 10292
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 10293
    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    .line 10292
    :cond_0
    :goto_0
    return v0

    .line 10294
    :cond_1
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 10295
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 10296
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    .line 10297
    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    .line 10298
    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    .line 10299
    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    .line 10300
    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    .line 10301
    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    .line 10302
    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    .line 10303
    const/16 v1, 0x22

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v1, 0xe

    .line 7979
    if-eqz p1, :cond_0

    .line 7980
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v0, :cond_1

    .line 7981
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 7988
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v2, -0x7f

    if-eq v0, v2, :cond_2

    .line 7989
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 7988
    :goto_1
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    .line 7990
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 7978
    return-void

    .line 7984
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 7989
    :cond_2
    const/high16 v0, -0x80000000

    goto :goto_1
.end method

.method private updateDefaultRouteMacAddress(I)Ljava/lang/String;
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 4738
    const/4 v0, 0x0

    .line 4739
    .local v0, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v0    # "address":Ljava/lang/String;
    .local v5, "route$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 4740
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4741
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 4742
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 4743
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v6, :cond_1

    .line 4744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress found Ipv4 default :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4745
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4747
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4749
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 4752
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/net/InetAddress;->isReachable(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 4758
    .local v3, "reachable":Z
    if-eqz v3, :cond_2

    .line 4760
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->macAddressFromRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4761
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    if-eqz v6, :cond_2

    .line 4762
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress reachable (tried again) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4763
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4762
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4763
    const-string/jumbo v7, " found "

    .line 4762
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4768
    .end local v3    # "reachable":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 4769
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v6, v7, v0}, Lcom/android/server/wifi/WifiConfigStore;->setDefaultGwMacAddress(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 4753
    :catch_0
    move-exception v1

    .line 4754
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDefaultRouteMacAddress exception reaching :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4755
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 4754
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4757
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    throw v6

    .line 4774
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_3
    return-object v0
.end method

.method private updateLinkProperties(I)V
    .locals 11
    .param p1, "reason"    # I

    .prologue
    const v10, 0x2008a

    const v9, 0x2008b

    .line 4580
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 4582
    .local v4, "newLp":Landroid/net/LinkProperties;
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v7}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v2, 0x0

    .line 4583
    .local v2, "linkChanged":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v6

    .line 4584
    .local v6, "wasProvisioned":Z
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->isProvisioned(Landroid/net/LinkProperties;)Z

    move-result v1

    .line 4589
    .local v1, "isProvisioned":Z
    if-eqz v6, :cond_0

    if-eqz v1, :cond_11

    .line 4590
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4591
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_2
    const/4 v3, 0x0

    .line 4592
    .local v3, "lostProvisioning":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 4594
    .local v0, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v2, :cond_5

    .line 4595
    sget-boolean v7, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v7, :cond_3

    .line 4596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Link configuration changed for netId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4597
    const-string/jumbo v8, " old: "

    .line 4596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4597
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4597
    const-string/jumbo v8, " new: "

    .line 4596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4599
    :cond_3
    iput-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4600
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    if-eqz v7, :cond_4

    .line 4601
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mIpReachabilityMonitor:Landroid/net/IpReachabilityMonitor;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v8}, Landroid/net/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 4603
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 4606
    :cond_5
    if-eqz v3, :cond_6

    .line 4607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Lost IP layer provisioning! was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4608
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4607
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4609
    const-string/jumbo v8, " now: "

    .line 4607
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4612
    :cond_6
    sget-boolean v7, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v7, :cond_e

    .line 4613
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4614
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "updateLinkProperties nid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4615
    const-string/jumbo v7, " state: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4616
    const-string/jumbo v7, " reason: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4618
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v7, :cond_d

    .line 4619
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4620
    const-string/jumbo v7, " v4"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4623
    const-string/jumbo v7, " v6"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4625
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4626
    const-string/jumbo v7, " v4r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4628
    :cond_9
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4629
    const-string/jumbo v7, " v6r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4631
    :cond_a
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4632
    const-string/jumbo v7, " v4dns"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4635
    const-string/jumbo v7, " v6dns"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4637
    :cond_c
    if-eqz v1, :cond_d

    .line 4638
    const-string/jumbo v7, " isprov"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4641
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 4648
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_e
    sparse-switch p1, :sswitch_data_0

    .line 4579
    :cond_f
    :goto_2
    return-void

    .line 4582
    .end local v0    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v1    # "isProvisioned":Z
    .end local v2    # "linkChanged":Z
    .end local v3    # "lostProvisioning":Z
    .end local v6    # "wasProvisioned":Z
    :cond_10
    const/4 v2, 0x1

    .restart local v2    # "linkChanged":Z
    goto/16 :goto_0

    .line 4589
    .restart local v1    # "isProvisioned":Z
    .restart local v6    # "wasProvisioned":Z
    :cond_11
    const/4 v3, 0x1

    .restart local v3    # "lostProvisioning":Z
    goto/16 :goto_1

    .line 4591
    .end local v3    # "lostProvisioning":Z
    :cond_12
    const/4 v3, 0x1

    .restart local v3    # "lostProvisioning":Z
    goto/16 :goto_1

    .line 4652
    .restart local v0    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    :sswitch_0
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4653
    if-nez v1, :cond_f

    .line 4660
    const-string/jumbo v7, "IPv4 config succeeded, but not provisioned"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 4668
    :sswitch_1
    if-eqz v1, :cond_13

    if-eqz v3, :cond_14

    .line 4669
    :cond_13
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 4672
    :cond_14
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4685
    const-string/jumbo v7, "DHCP failure: provisioned, clearing IPv4 address."

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4686
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiStateMachine;->clearIPv4Address(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 4687
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 4694
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 4699
    :sswitch_3
    if-eqz v3, :cond_16

    .line 4701
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4706
    :cond_15
    :goto_3
    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_f

    .line 4708
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    goto :goto_2

    .line 4702
    :cond_16
    if-nez v6, :cond_15

    if-eqz v1, :cond_15

    .line 4704
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_3

    .line 4648
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_2
        0x2008c -> :sswitch_3
    .end sparse-switch
.end method

.method private useLegacyDhcpClient()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5078
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5079
    const-string/jumbo v3, "legacy_dhcp_client"

    .line 5077
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2383
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2382
    return-void
.end method

.method allowFullBandScanAndAssociated()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1423
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1424
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 1425
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "allowFullBandScanAndAssociated:  enableAutoJoinWhenAssociated : disallow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_0
    return v4

    .line 1431
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 1432
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    int-to-double v2, v2

    .line 1431
    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 1433
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 1434
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    int-to-double v2, v2

    .line 1433
    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 1435
    :cond_2
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_3

    .line 1436
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "allowFullBandScanAndAssociated: packet rate tx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1437
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 1436
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1437
    const-string/jumbo v2, "  rx "

    .line 1436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1438
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 1436
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1439
    const-string/jumbo v2, " allow scan with traffic "

    .line 1436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1439
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v2

    .line 1436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v0

    if-nez v0, :cond_4

    .line 1443
    return v4

    .line 1447
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-eq v0, v1, :cond_6

    .line 1448
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_5

    .line 1449
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "allowFullBandScanAndAssociated: getCurrentState() : disallow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_5
    return v4

    .line 1454
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public autoRoamSetBSSID(ILjava/lang/String;)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    .line 461
    return-void
.end method

.method public autoRoamSetBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 466
    const/4 v0, 0x1

    .line 467
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "any"

    iput-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 468
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "any"

    .line 469
    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    if-ne p2, v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-ne p2, v1, :cond_3

    .line 472
    return v2

    .line 474
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    const-string/jumbo v2, "any"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "any"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    if-nez v1, :cond_4

    .line 477
    const/4 v0, 0x0

    .line 480
    :cond_4
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    if-eqz v1, :cond_5

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoRoamSetBSSID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 483
    :cond_5
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 484
    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigStore;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V

    .line 486
    return v0
.end method

.method public clearANQPCache()V
    .locals 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->trimANQPCache(Z)V

    .line 1501
    return-void
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2390
    const v0, 0x20039

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2389
    return-void
.end method

.method clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    .line 8188
    if-nez p1, :cond_0

    .line 8189
    return-void

    .line 8190
    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_1

    .line 8191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8192
    const-string/jumbo v1, " config.bssid "

    .line 8191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8192
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 8191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8194
    :cond_1
    const-string/jumbo v0, "any"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 8195
    const-string/jumbo v0, "any"

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 8196
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    .line 8197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8198
    const-string/jumbo v1, " nid="

    .line 8197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8198
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8200
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V

    .line 8187
    return-void
.end method

.method clearCurrentConfigBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbg"    # Ljava/lang/String;

    .prologue
    .line 8182
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 8183
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 8184
    return-void

    .line 8185
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 8180
    return-void
.end method

.method closeRadioScanStats()V
    .locals 3

    .prologue
    .line 1864
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1865
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_0

    .line 1866
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    .line 1867
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    .line 1868
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    .line 1869
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    .line 1870
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    .line 1871
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    .line 1863
    :cond_0
    return-void
.end method

.method connectScanningService()V
    .locals 2

    .prologue
    .line 5130
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v0, :cond_0

    .line 5131
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifiscanner"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner;

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 5128
    :cond_0
    return-void
.end method

.method deferForUserInput(Landroid/os/Message;IZ)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "netId"    # I
    .param p3, "allowOverride"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 522
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deferForUserInput: configuration for netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not stored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 524
    return v3

    .line 527
    :cond_0
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    packed-switch v1, :pswitch_data_0

    .line 535
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 536
    return v2

    .line 530
    :pswitch_0
    return v2

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2193
    if-eqz p1, :cond_0

    .line 2194
    const v0, 0x20062

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2192
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 2210
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2209
    return-void
.end method

.method public disconnectCommand(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .prologue
    .line 2214
    const v0, 0x20049

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2213
    return-void
.end method

.method doNetworkStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 8091
    const v0, 0x20094

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 8090
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2625
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2626
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDhcpResults "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOperationalMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserWantsSuspendOpt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSuspendOptNeedsDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Supplicant status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLegacyPnoEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDriverSetCountryCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDriverSetCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedModeGScanOffloadStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGScanPeriodMilli "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2643
    const-string/jumbo v1, "SSID whitelist :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWhiteListedSsids:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2648
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2649
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2650
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2651
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2652
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2653
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/DummyWifiLogger;->captureBugReportData(I)V

    .line 2654
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/DummyWifiLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2624
    return-void
.end method

.method enableAggressiveHandover(I)V
    .locals 0
    .param p1, "enabled"    # I

    .prologue
    .line 1498
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    .line 1497
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 2398
    const v0, 0x20037

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2397
    return-void
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v0

    .line 1515
    .local v0, "old_state":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1516
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->wifiAssociatedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->startDelayedScan(ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1520
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method enableBackgroundScan(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 2363
    if-eqz p1, :cond_0

    .line 2364
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 2367
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->retrievePnoNetworkPriorityList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2368
    .local v0, "pnoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/WifiNative$PnoNetworkPriority;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/wifi/WifiNative;->enableBackgroundScan(ZLjava/util/List;)Z

    move-result v1

    .line 2369
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 2370
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    .line 2362
    :goto_0
    return-void

    .line 2372
    :cond_1
    const-string/jumbo v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Fail to set up pno, want "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLegacyPnoEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2394
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x20052

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2393
    return-void

    :cond_0
    move v0, v1

    .line 2394
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2531
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 2532
    .local v0, "enabler":I
    :goto_0
    const v1, 0x2005c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 2530
    return-void

    .line 2531
    .end local v0    # "enabler":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabler":I
    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1376
    iput p1, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    .line 1377
    if-lez p1, :cond_0

    .line 1378
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1379
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 1380
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 1381
    sput-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 1382
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v3, "DEBUG"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    .line 1390
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLogger:Lcom/android/server/wifi/DummyWifiLogger;

    iget v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/DummyWifiLogger;->startLogging(Z)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->enableVerboseLogging(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor;->enableVerboseLogging(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->enableVerboseLogging(I)V

    .line 1394
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging(I)V

    .line 1395
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->enableVerboseLogging(I)V

    .line 1375
    return-void

    .line 1384
    :cond_0
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    .line 1385
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    .line 1386
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->PDBG:Z

    .line 1387
    sput-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->mLogMessages:Z

    .line 1388
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string/jumbo v3, "INFO"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setSupplicantLogLevel(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1390
    goto :goto_1
.end method

.method getAggressiveHandover()I
    .locals 1

    .prologue
    .line 1494
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mAggressiveHandover:I

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7176
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    if-eqz v0, :cond_0

    .line 7177
    const/4 v0, 0x0

    return-object v0

    .line 7179
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    .line 2508
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2495
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    if-eqz v0, :cond_0

    .line 2496
    new-instance v0, Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->netId:I

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    return-object v0

    .line 2498
    :cond_0
    return-object v1
.end method

.method getCurrentScanResult()Landroid/net/wifi/ScanResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7157
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 7158
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_0

    .line 7159
    return-object v4

    .line 7161
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 7162
    .local v0, "BSSID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 7163
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    .line 7166
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v2

    .line 7168
    .local v2, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v2, :cond_2

    .line 7169
    return-object v4

    .line 7172
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    return-object v3
.end method

.method getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 7150
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7151
    const/4 v0, 0x0

    return-object v0

    .line 7153
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedTimeMilli()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v2, v3, :cond_0

    .line 1738
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1740
    .local v0, "now_ms":J
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    return-wide v2

    .line 1742
    .end local v0    # "now_ms":J
    :cond_0
    return-wide v4
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getHalBasedAutojoinOffload()I
    .locals 1

    .prologue
    .line 1408
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2691
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 2692
    .local v20, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScreenOn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 2693
    const-string/jumbo v26, "!"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v26, v0

    sget v27, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_UNKNOWN:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 2696
    const-string/jumbo v26, "("

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiStateMachine;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v26, v0

    if-lez v26, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v26, v0

    const/16 v27, 0x3f2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 2700
    const-string/jumbo v26, " uid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2702
    :cond_2
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->printTime()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 3268
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3269
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3275
    :cond_3
    :goto_0
    :sswitch_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    return-object v26

    .line 2706
    :sswitch_1
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2707
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2711
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2715
    :sswitch_2
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    const-string/jumbo v26, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2720
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2721
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2725
    :sswitch_3
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    const-string/jumbo v26, " halAllowed="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2730
    const-string/jumbo v26, " scanAllowed="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->allowFullBandScanAndAssociated()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2731
    const-string/jumbo v26, " autojoinAllowed="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2733
    const-string/jumbo v26, " withTraffic="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2734
    const-string/jumbo v26, " tx="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2735
    const-string/jumbo v26, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2736
    const-string/jumbo v26, " rx="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2737
    const-string/jumbo v26, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2738
    const-string/jumbo v26, " -> "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2741
    :sswitch_4
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2746
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Landroid/net/wifi/ScanResult;

    .line 2747
    .local v19, "results":[Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v11, v0, :cond_3

    .line 2748
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v19, v11

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    aget-object v26, v19, v11

    move-object/from16 v0, v26

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2750
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    aget-object v27, v19, v11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2747
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2755
    .end local v11    # "i":I
    .end local v19    # "results":[Landroid/net/wifi/ScanResult;
    :sswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2756
    .local v14, "now":Ljava/lang/Long;
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2760
    const-string/jumbo v26, " ic="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2761
    sget v26, Lcom/android/server/wifi/WifiStateMachine;->sScanAlarmIntentCount:I

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 2763
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    .line 2764
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v26, "scan_request_time"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 2765
    .local v17, "request":Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_4

    .line 2766
    const-string/jumbo v26, " proc(ms):"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2769
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v17    # "request":Ljava/lang/Long;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsScanOngoing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    const-string/jumbo v26, " onGoing"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mIsFullScanOngoing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    const-string/jumbo v26, " full"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    .line 2772
    const-string/jumbo v26, " started:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2773
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastStartScanTimeStamp:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2775
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    .line 2776
    const-string/jumbo v26, " dur:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2778
    :cond_8
    const-string/jumbo v26, " cnt="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mDelayedScanCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2779
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2780
    const-string/jumbo v26, " f="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2781
    const-string/jumbo v26, " sc="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2782
    const-string/jumbo v26, " link="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2783
    const-string/jumbo v26, " tx=%.1f,"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    const-string/jumbo v26, " %.1f,"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    const-string/jumbo v26, " %.1f "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2786
    const-string/jumbo v26, " rx=%.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 2788
    const-string/jumbo v26, " list="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanFreqs:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v16

    .line 2793
    .local v16, "report":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 2794
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2790
    .end local v16    # "report":Ljava/lang/String;
    :cond_9
    const-string/jumbo v26, " fiv="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2798
    .end local v14    # "now":Ljava/lang/Long;
    :sswitch_6
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/server/wifi/StateChangeResult;

    .line 2803
    .local v25, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    if-eqz v25, :cond_3

    .line 2804
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wifi/StateChangeResult;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2809
    .end local v25    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_7
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2814
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    const-string/jumbo v26, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 2817
    const-string/jumbo v26, " hidden"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 2820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "*"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 2823
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 2824
    const-string/jumbo v26, " ephemeral"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 2827
    const-string/jumbo v26, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    :cond_d
    const-string/jumbo v26, " cuid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2830
    const-string/jumbo v26, " suid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2821
    :cond_e
    const-string/jumbo v26, " hasPSK"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2834
    :sswitch_8
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2836
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2839
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    const-string/jumbo v26, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 2842
    const-string/jumbo v26, " hidden"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2845
    const-string/jumbo v26, " hasPSK"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    .line 2848
    const-string/jumbo v26, " ephemeral"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 2851
    const-string/jumbo v26, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    :cond_12
    const-string/jumbo v26, " cuid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2854
    const-string/jumbo v26, " suid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2855
    const-string/jumbo v26, " ajst="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2859
    :sswitch_9
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2861
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2864
    .local v4, "bssid":Ljava/lang/String;
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_13

    .line 2865
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2866
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2868
    :cond_13
    const-string/jumbo v26, " blacklist="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2871
    .end local v4    # "bssid":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    .line 2876
    const-string/jumbo v26, " found="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2879
    :cond_14
    const-string/jumbo v26, " known="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsKnown:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2880
    const-string/jumbo v26, " got="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mNumScanResultsReturned:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2881
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_15

    .line 2882
    const-string/jumbo v26, " dur:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->lastScanDuration:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2884
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 2885
    const-string/jumbo v26, " on:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeThisScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2886
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2888
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    move/from16 v26, v0

    if-eqz v26, :cond_17

    .line 2889
    const-string/jumbo v26, " tx:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeThisScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2890
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2892
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 2893
    const-string/jumbo v26, " rx:"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeThisScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeScan:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2894
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2896
    :cond_18
    const-string/jumbo v26, " bcn=%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    const-string/jumbo v26, " con=%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectionRequests:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 2899
    .local v13, "key":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2900
    const-string/jumbo v26, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2906
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2908
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2909
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    const-string/jumbo v26, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2912
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2913
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_19

    .line 2914
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 2917
    .restart local v13    # "key":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2918
    const-string/jumbo v26, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2923
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 2928
    const-string/jumbo v26, " BSSID="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 2931
    const-string/jumbo v26, " Target="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :cond_1b
    const-string/jumbo v26, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2936
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 2937
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    :cond_1c
    const-string/jumbo v26, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2940
    const-string/jumbo v26, " reason="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1d

    .line 2942
    const-string/jumbo v26, " lastbssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 2945
    const-string/jumbo v26, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2946
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2948
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2949
    const-string/jumbo v26, " debounce"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2954
    :sswitch_e
    const-string/jumbo v26, " nid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2955
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    .line 2956
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 2959
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    .line 2960
    const-string/jumbo v26, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    const-string/jumbo v26, " ajst="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2962
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v26, v0

    if-eqz v26, :cond_20

    .line 2963
    const-string/jumbo v26, " selfAdded"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    :cond_20
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v26, v0

    if-eqz v26, :cond_21

    .line 2966
    const-string/jumbo v26, " st="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2967
    const-string/jumbo v26, " rs="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2969
    :cond_21
    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_22

    .line 2970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2971
    .restart local v14    # "now":Ljava/lang/Long;
    const-string/jumbo v26, " lastconn="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    iget-wide v0, v7, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "(ms)"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    .end local v14    # "now":Ljava/lang/Long;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_23

    .line 2974
    const-string/jumbo v26, " lastbssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 2977
    const-string/jumbo v26, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2978
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2979
    const-string/jumbo v26, " bssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2986
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_f
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_24

    .line 2991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_24

    .line 2992
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_25

    .line 2994
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    :cond_25
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2996
    const-string/jumbo v26, " f="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2997
    const-string/jumbo v26, " sc="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2998
    const-string/jumbo v26, " link="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2999
    const-string/jumbo v26, " tx=%.1f,"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    const-string/jumbo v26, " %.1f,"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    const-string/jumbo v26, " %.1f "

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    const-string/jumbo v26, " rx=%.1f"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    const-string/jumbo v26, " bcn=%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->reportOnTime()Ljava/lang/String;

    move-result-object v16

    .line 3005
    .restart local v16    # "report":Ljava/lang/String;
    if-eqz v16, :cond_26

    .line 3006
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_27

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->wifiScoringReport:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    move/from16 v26, v0

    if-eqz v26, :cond_28

    .line 3012
    const-string/jumbo v26, " offload-started periodMilli "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3014
    :cond_28
    const-string/jumbo v26, " offload-stopped"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3019
    .end local v16    # "report":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 3024
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_29

    .line 3025
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v26, v0

    if-eqz v26, :cond_29

    .line 3027
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3030
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    .line 3031
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    :cond_2a
    const-string/jumbo v26, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3034
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3035
    if-eqz v7, :cond_3

    .line 3036
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3037
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3038
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration$Visibility;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3043
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_11
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/wifi/ScanResult;

    .line 3048
    .local v18, "result":Landroid/net/wifi/ScanResult;
    if-eqz v18, :cond_2b

    .line 3049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 3050
    .restart local v14    # "now":Ljava/lang/Long;
    const-string/jumbo v26, " bssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3052
    const-string/jumbo v26, " freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3053
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_2d

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v26, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v26, v26, v28

    if-gez v26, :cond_2d

    .line 3054
    const-string/jumbo v26, " seen="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3060
    .end local v14    # "now":Ljava/lang/Long;
    :cond_2b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2c

    .line 3061
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3063
    :cond_2c
    const-string/jumbo v26, " roam="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    const-string/jumbo v26, " fail count="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRoamFailCount:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3057
    .restart local v14    # "now":Ljava/lang/Long;
    :cond_2d
    const-string/jumbo v26, " !seen="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3067
    .end local v14    # "now":Ljava/lang/Long;
    .end local v18    # "result":Landroid/net/wifi/ScanResult;
    :sswitch_12
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3072
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 3073
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3074
    const-string/jumbo v26, " prio="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3075
    const-string/jumbo v26, " status="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3076
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2e

    .line 3077
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 3080
    .local v9, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_3

    .line 3081
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 3082
    const-string/jumbo v26, " is current"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3084
    :cond_2f
    const-string/jumbo v26, " current="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    const-string/jumbo v26, " prio="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3086
    const-string/jumbo v26, " status="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3093
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    :sswitch_13
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v13

    .line 3098
    .restart local v13    # "key":Ljava/lang/String;
    if-eqz v13, :cond_30

    .line 3099
    const-string/jumbo v26, " last="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3102
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_3

    if-eqz v13, :cond_31

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 3103
    :cond_31
    const-string/jumbo v26, " target="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3107
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "key":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    const-string/jumbo v26, " num="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3114
    :sswitch_15
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    const-string/jumbo v26, " txpkts="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3119
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3120
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3123
    :sswitch_16
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    .line 3128
    const-string/jumbo v26, " OK "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    :cond_32
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v26

    if-eqz v26, :cond_33

    .line 3134
    const-string/jumbo v26, " v4"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v26

    if-eqz v26, :cond_34

    .line 3137
    const-string/jumbo v26, " v6"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v26

    if-eqz v26, :cond_35

    .line 3140
    const-string/jumbo v26, " v4r"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v26

    if-eqz v26, :cond_36

    .line 3143
    const-string/jumbo v26, " v6r"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v26

    if-eqz v26, :cond_37

    .line 3146
    const-string/jumbo v26, " v4dns"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 3149
    const-string/jumbo v26, " v6dns"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3129
    :cond_38
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 3130
    const-string/jumbo v26, " FAIL "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 3154
    :sswitch_17
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3159
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkInfo;

    .line 3160
    .local v12, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v24

    .line 3161
    .local v24, "state":Landroid/net/NetworkInfo$State;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    .line 3162
    .local v10, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v24, :cond_39

    .line 3163
    const-string/jumbo v26, " st="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3165
    :cond_39
    if-eqz v10, :cond_3

    .line 3166
    const-string/jumbo v26, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3171
    .end local v10    # "detailedState":Landroid/net/NetworkInfo$DetailedState;
    .end local v12    # "info":Landroid/net/NetworkInfo;
    .end local v24    # "state":Landroid/net/NetworkInfo$State;
    :sswitch_18
    const/4 v8, -0x1

    .line 3172
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 3173
    .local v6, "c":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_3a

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 3174
    :cond_3a
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3176
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    const-string/jumbo v26, " failures: "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3180
    const-string/jumbo v26, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_3b

    .line 3183
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    :cond_3b
    if-eqz v6, :cond_3e

    .line 3187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v21

    .line 3188
    .local v21, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v21, :cond_3d

    .line 3189
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "sd$iterator":Ljava/util/Iterator;
    :cond_3c
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wifi/ScanDetail;

    .line 3190
    .local v22, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v15

    .line 3191
    .local v15, "r":Landroid/net/wifi/ScanResult;
    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3c

    .line 3192
    const-string/jumbo v26, " ipfail="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v15, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3193
    const-string/jumbo v26, ",st="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v15, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3197
    .end local v15    # "r":Landroid/net/wifi/ScanResult;
    .end local v22    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v23    # "sd$iterator":Ljava/util/Iterator;
    :cond_3d
    const-string/jumbo v26, " -> ajst="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3198
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3199
    const-string/jumbo v26, " txpkts="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3200
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3201
    const-string/jumbo v26, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3203
    .end local v21    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_3e
    const-string/jumbo v26, " bcn=%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3206
    .end local v6    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "count":I
    :sswitch_19
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3209
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v26

    if-eqz v26, :cond_3f

    .line 3212
    const-string/jumbo v26, " v4"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v26

    if-eqz v26, :cond_40

    .line 3215
    const-string/jumbo v26, " v6"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v26

    if-eqz v26, :cond_41

    .line 3218
    const-string/jumbo v26, " v4r"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v26

    if-eqz v26, :cond_42

    .line 3221
    const-string/jumbo v26, " v6r"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv4DnsServer()Z

    move-result v26

    if-eqz v26, :cond_43

    .line 3224
    const-string/jumbo v26, " v4dns"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkProperties;->hasIPv6DnsServer()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 3227
    const-string/jumbo v26, " v6dns"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3232
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3233
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3237
    :sswitch_1b
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3238
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3239
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3240
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 3242
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3246
    :sswitch_1c
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3247
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3248
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3250
    const-string/jumbo v26, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->roamWatchdogCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3253
    :sswitch_1d
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    const-string/jumbo v26, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    const-string/jumbo v26, " cur="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine;->disconnectingWatchdogCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3262
    :sswitch_1e
    const-string/jumbo v26, " rssi="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3263
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    const-string/jumbo v26, " thresholds="

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2703
    nop

    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_12
        0x20036 -> :sswitch_13
        0x2003b -> :sswitch_14
        0x20047 -> :sswitch_5
        0x20050 -> :sswitch_1b
        0x20053 -> :sswitch_f
        0x2005e -> :sswitch_1c
        0x20060 -> :sswitch_1d
        0x2008b -> :sswitch_18
        0x2008c -> :sswitch_19
        0x2008d -> :sswitch_c
        0x2008f -> :sswitch_10
        0x20090 -> :sswitch_f
        0x20091 -> :sswitch_11
        0x20092 -> :sswitch_7
        0x20093 -> :sswitch_c
        0x20095 -> :sswitch_1a
        0x2009a -> :sswitch_2
        0x2009b -> :sswitch_1
        0x2009c -> :sswitch_4
        0x2009e -> :sswitch_3
        0x2009f -> :sswitch_1
        0x200a2 -> :sswitch_1e
        0x200a3 -> :sswitch_1e
        0x200a4 -> :sswitch_1e
        0x2300b -> :sswitch_17
        0x24003 -> :sswitch_b
        0x24004 -> :sswitch_d
        0x24005 -> :sswitch_a
        0x24006 -> :sswitch_6
        0x2400d -> :sswitch_e
        0x2400e -> :sswitch_e
        0x24011 -> :sswitch_0
        0x2402b -> :sswitch_9
        0x25001 -> :sswitch_10
        0x25004 -> :sswitch_8
        0x25007 -> :sswitch_7
        0x25011 -> :sswitch_13
        0x25014 -> :sswitch_f
        0x30004 -> :sswitch_15
        0x30005 -> :sswitch_16
    .end sparse-switch
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1631
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method getPrivateBroadcast(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 1362
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1363
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1365
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getRxPacketRate()D
    .locals 2

    .prologue
    .line 4469
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 4470
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    return-wide v0

    .line 4472
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getScanResultsListNoCopyUnsync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public getTxPacketRate()D
    .locals 2

    .prologue
    .line 4462
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 4463
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    return-wide v0

    .line 4465
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 1372
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mVerboseLoggingLevel:I

    return v0
.end method

.method getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 8
    .param p1, "dbg"    # Z

    .prologue
    .line 1824
    const/4 v5, 0x0

    .line 1825
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_0

    .line 1826
    const-string/jumbo v4, "wlan0"

    .line 1827
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-static {v4}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v5

    .line 1828
    .local v5, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v4, :cond_3

    if-nez v5, :cond_3

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-lez v6, :cond_3

    .line 1829
    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    .line 1838
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    iget v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I

    if-gtz v6, :cond_4

    .line 1839
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v2

    .line 1840
    .local v2, "mTxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v0

    .line 1841
    .local v0, "mRxPkts":J
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v2, v3, v0, v1}, Landroid/net/wifi/WifiInfo;->updatePacketRates(JJ)V

    .line 1845
    .end local v0    # "mRxPkts":J
    .end local v2    # "mTxPkts":J
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1846
    const v6, 0x2009e

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1848
    :cond_2
    return-object v5

    .line 1830
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_3
    if-eqz v5, :cond_0

    .line 1831
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/WifiStateMachine;->lastLinkLayerStatsUpdate:J

    .line 1832
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1833
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1834
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1835
    iget v6, v5, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningBeaconCount:I

    goto :goto_0

    .line 1843
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiInfo;->updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V

    goto :goto_1
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 27
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 10207
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 10208
    .local v21, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 10209
    .local v15, "rand":[B
    const/4 v5, 0x0

    .line 10210
    .local v5, "authn":[B
    const-string/jumbo v18, "UMTS-AUTH"

    .line 10212
    .local v18, "res_type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 10213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 10214
    :cond_0
    const-string/jumbo v25, "id matches targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10219
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 10221
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B

    move-result-object v15

    .line 10222
    .local v15, "rand":[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 10230
    .end local v5    # "authn":[B
    .end local v15    # "rand":[B
    :goto_0
    const-string/jumbo v24, ""

    .line 10231
    .local v24, "tmResponse":Ljava/lang/String;
    if-eqz v15, :cond_1

    if-eqz v5, :cond_1

    .line 10233
    invoke-static {v15, v5}, Lcom/android/server/wifi/WifiStateMachine;->concatHex([B[B)[B

    move-result-object v25

    const/16 v26, 0x2

    .line 10232
    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 10236
    .local v8, "base64Challenge":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string/jumbo v26, "phone"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .line 10235
    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 10237
    .local v23, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v23, :cond_5

    .line 10238
    const/4 v4, 0x2

    .line 10239
    .local v4, "appType":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 10240
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Raw Response - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10246
    .end local v4    # "appType":I
    .end local v8    # "base64Challenge":Ljava/lang/String;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 10247
    .local v12, "good_response":Z
    if-eqz v24, :cond_8

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 10249
    const/16 v25, 0x0

    .line 10248
    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v20

    .line 10250
    .local v20, "result":[B
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Hex Response - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10251
    const/16 v25, 0x0

    aget-byte v22, v20, v25

    .line 10252
    .local v22, "tag":B
    const/16 v25, -0x25

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 10253
    const-string/jumbo v25, "successful 3G authentication "

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10254
    const/16 v25, 0x1

    aget-byte v17, v20, v25

    .line 10255
    .local v17, "res_len":I
    const/16 v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v16

    .line 10256
    .local v16, "res":Ljava/lang/String;
    add-int/lit8 v25, v17, 0x2

    aget-byte v10, v20, v25

    .line 10257
    .local v10, "ck_len":I
    add-int/lit8 v25, v17, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v9

    .line 10258
    .local v9, "ck":Ljava/lang/String;
    add-int v25, v17, v10

    add-int/lit8 v25, v25, 0x3

    aget-byte v14, v20, v25

    .line 10259
    .local v14, "ik_len":I
    add-int v25, v17, v10

    add-int/lit8 v25, v25, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v13

    .line 10260
    .local v13, "ik":Ljava/lang/String;
    const-string/jumbo v25, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10261
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ik:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "ck:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " res:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10262
    const/4 v12, 0x1

    .line 10278
    .end local v9    # "ck":Ljava/lang/String;
    .end local v10    # "ck_len":I
    .end local v13    # "ik":Ljava/lang/String;
    .end local v14    # "ik_len":I
    .end local v16    # "res":Ljava/lang/String;
    .end local v17    # "res_len":I
    .end local v20    # "result":[B
    .end local v22    # "tag":B
    :goto_2
    if-eqz v12, :cond_9

    .line 10279
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 10280
    .local v19, "response":Ljava/lang/String;
    sget-boolean v25, Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z

    if-eqz v25, :cond_2

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Supplicant Response -"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10281
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    .line 10206
    .end local v19    # "response":Ljava/lang/String;
    :goto_3
    return-void

    .line 10216
    .end local v12    # "good_response":Z
    .end local v24    # "tmResponse":Ljava/lang/String;
    .restart local v5    # "authn":[B
    .local v15, "rand":[B
    :cond_3
    const-string/jumbo v25, "id does not match targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10217
    return-void

    .line 10223
    .end local v15    # "rand":[B
    :catch_0
    move-exception v11

    .line 10224
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v25, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10227
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "rand":[B
    :cond_4
    const-string/jumbo v25, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10242
    .end local v5    # "authn":[B
    .end local v15    # "rand":[B
    .restart local v8    # "base64Challenge":Ljava/lang/String;
    .restart local v23    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v24    # "tmResponse":Ljava/lang/String;
    :cond_5
    const-string/jumbo v25, "could not get telephony manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10263
    .end local v8    # "base64Challenge":Ljava/lang/String;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v12    # "good_response":Z
    .restart local v20    # "result":[B
    .restart local v22    # "tag":B
    :cond_6
    const/16 v25, -0x24

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 10264
    const-string/jumbo v25, "synchronisation failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10265
    const/16 v25, 0x1

    aget-byte v7, v20, v25

    .line 10266
    .local v7, "auts_len":I
    const/16 v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v6

    .line 10267
    .local v6, "auts":Ljava/lang/String;
    const-string/jumbo v18, "UMTS-AUTS"

    .line 10268
    const-string/jumbo v25, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10269
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "auts:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10270
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 10272
    .end local v6    # "auts":Ljava/lang/String;
    .end local v7    # "auts_len":I
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bad response - unknown tag = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10275
    .end local v20    # "result":[B
    .end local v22    # "tag":B
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "bad response - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10283
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wifi/WifiNative;->umtsAuthFailedResponse(I)Z

    goto/16 :goto_3
.end method

.method handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V
    .locals 24
    .param p1, "requestData"    # Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .prologue
    .line 10135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 10136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 10137
    :cond_0
    const-string/jumbo v18, "id matches targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 10143
    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 10146
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v16, :cond_6

    .line 10147
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 10148
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->data:[Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v5, v19, v18

    .line 10150
    .local v5, "challenge":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 10148
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 10139
    .end local v5    # "challenge":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string/jumbo v18, "id does not match targetWifiConfiguration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10140
    return-void

    .line 10152
    .restart local v5    # "challenge":Ljava/lang/String;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "RAND = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10154
    const/4 v10, 0x0

    .line 10156
    .local v10, "rand":[B
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 10163
    .local v10, "rand":[B
    const/16 v21, 0x2

    .line 10162
    move/from16 v0, v21

    invoke-static {v10, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 10168
    .local v4, "base64Challenge":Ljava/lang/String;
    const/4 v3, 0x2

    .line 10169
    .local v3, "appType":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 10170
    .local v17, "tmResponse":Ljava/lang/String;
    if-nez v17, :cond_4

    .line 10174
    const/4 v3, 0x1

    .line 10175
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 10177
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Raw Response - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10179
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 10181
    const/16 v21, 0x0

    .line 10180
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    .line 10182
    .local v12, "result":[B
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Hex Response -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10183
    const/16 v21, 0x0

    aget-byte v15, v12, v21

    .line 10184
    .local v15, "sres_len":I
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v12, v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v14

    .line 10185
    .local v14, "sres":Ljava/lang/String;
    add-int/lit8 v9, v15, 0x1

    .line 10186
    .local v9, "kc_offset":I
    aget-byte v8, v12, v9

    .line 10187
    .local v8, "kc_len":I
    add-int/lit8 v21, v9, 0x1

    move/from16 v0, v21

    invoke-static {v12, v0, v8}, Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;

    move-result-object v7

    .line 10188
    .local v7, "kc":Ljava/lang/String;
    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10189
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "kc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " sres:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10191
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 10192
    .local v11, "response":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Supplicant Response -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V

    .line 10193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v22, v0

    const-string/jumbo v23, "GSM-AUTH"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/wifi/WifiNative;->simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 10157
    .end local v3    # "appType":I
    .end local v4    # "base64Challenge":Ljava/lang/String;
    .end local v7    # "kc":Ljava/lang/String;
    .end local v8    # "kc_len":I
    .end local v9    # "kc_offset":I
    .end local v11    # "response":Ljava/lang/String;
    .end local v12    # "result":[B
    .end local v14    # "sres":Ljava/lang/String;
    .end local v15    # "sres_len":I
    .end local v17    # "tmResponse":Ljava/lang/String;
    .local v10, "rand":[B
    :catch_0
    move-exception v6

    .line 10158
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v21, "malformed challenge"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10195
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "appType":I
    .restart local v4    # "base64Challenge":Ljava/lang/String;
    .local v10, "rand":[B
    .restart local v17    # "tmResponse":Ljava/lang/String;
    :cond_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "bad response - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    goto/16 :goto_1

    .line 10201
    .end local v3    # "appType":I
    .end local v4    # "base64Challenge":Ljava/lang/String;
    .end local v5    # "challenge":Ljava/lang/String;
    .end local v10    # "rand":[B
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "tmResponse":Ljava/lang/String;
    :cond_6
    const-string/jumbo v18, "could not get telephony manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wifi/WifiNative;->simAuthFailedResponse(I)Z

    .line 10134
    :cond_7
    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5116
    invoke-direct {p0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 5117
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 5119
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2300f

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 5122
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 5123
    const/4 v1, 0x2

    .line 5122
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 5125
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 5114
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5033
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 5034
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v1, :cond_0

    .line 5052
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 5060
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 5061
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiNative;->setPowerSave(Z)V

    .line 5064
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 5067
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5068
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5069
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5070
    const v1, 0x30007

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 5071
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5072
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 5032
    return-void
.end method

.method isRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 457
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    if-eq v1, v0, :cond_0

    .line 458
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method maybeRegisterNetworkFactory()V
    .locals 6

    .prologue
    .line 5501
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    if-nez v0, :cond_0

    .line 5502
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 5503
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 5504
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 5505
    const-string/jumbo v4, "WIFI"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    .line 5504
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    .line 5506
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->setScoreFilter(I)V

    .line 5507
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkFactory;->register()V

    .line 5511
    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 5512
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "WIFI_UT"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;

    move-object v1, p0

    .line 5511
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    .line 5513
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->setScoreFilter(I)V

    .line 5514
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mUntrustedNetworkFactory:Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->register()V

    .line 5500
    :cond_0
    return-void
.end method

.method noteWifiDisabledWhileAssociated()V
    .locals 8

    .prologue
    .line 7124
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    .line 7125
    .local v5, "rssi":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7126
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v6, v7, :cond_0

    .line 7127
    const/16 v6, -0x7f

    if-eq v5, v6, :cond_0

    .line 7128
    if-eqz v0, :cond_0

    .line 7129
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    .line 7130
    .local v1, "is24GHz":Z
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v2, 0x1

    .line 7132
    .local v2, "isBadRSSI":Z
    :goto_0
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_3

    const/4 v4, 0x1

    .line 7134
    .local v4, "isLowRSSI":Z
    :goto_1
    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-lt v5, v6, :cond_5

    const/4 v3, 0x1

    .line 7136
    .local v3, "isHighRSSI":Z
    :goto_2
    if-eqz v2, :cond_7

    .line 7138
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 7122
    .end local v1    # "is24GHz":Z
    .end local v2    # "isBadRSSI":Z
    .end local v3    # "isHighRSSI":Z
    .end local v4    # "isLowRSSI":Z
    :cond_0
    :goto_3
    return-void

    .line 7131
    .restart local v1    # "is24GHz":Z
    :cond_1
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v6, v6, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    .end local v2    # "isBadRSSI":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isBadRSSI":Z
    goto :goto_0

    .line 7133
    :cond_3
    if-nez v1, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ge v6, v7, :cond_4

    const/4 v4, 0x1

    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    .end local v4    # "isLowRSSI":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isLowRSSI":Z
    goto :goto_1

    .line 7135
    :cond_5
    if-nez v1, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v7, v7, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-lt v6, v7, :cond_6

    const/4 v3, 0x1

    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    .end local v3    # "isHighRSSI":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isHighRSSI":Z
    goto :goto_2

    .line 7139
    :cond_7
    if-eqz v4, :cond_8

    .line 7141
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    goto :goto_3

    .line 7142
    :cond_8
    if-nez v3, :cond_0

    .line 7144
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    goto :goto_3
.end method

.method public onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 240
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPnoNetworkFound event received num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 243
    const-string/jumbo v1, "WifiStateMachine"

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_0
    array-length v1, p1

    const v2, 0x2009c

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public onRssiThresholdBreached(B)V
    .locals 3
    .param p1, "curRssi"    # B

    .prologue
    .line 277
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 278
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRssiThresholdBreach event. Cur Rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const v0, 0x200a4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 276
    return-void
.end method

.method printTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2675
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " rt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2676
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    .locals 11
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 250
    new-instance v10, Landroid/net/wifi/ScanSettings;

    invoke-direct {v10}, Landroid/net/wifi/ScanSettings;-><init>()V

    .line 251
    .local v10, "settings":Landroid/net/wifi/ScanSettings;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p1

    if-ge v8, v1, :cond_0

    .line 255
    new-instance v0, Landroid/net/wifi/WifiChannel;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 256
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    aget-object v1, p1, v8

    iget v1, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 257
    iget-object v1, v10, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    aget-object v1, p1, v8

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopPnoOffload()V

    .line 263
    const-string/jumbo v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processPnoNetworkFound starting scan cnt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mPnoResultFound:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mPnoResultFound:I

    const/4 v2, -0x7

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v10, v4}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 265
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mPnoResultFound:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiStateMachine;->mPnoResultFound:I

    .line 267
    const/16 v3, 0x7530

    .line 270
    .local v3, "delay":I
    sget v4, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " processPnoNetworkFound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    const-wide/16 v6, 0x7530

    .line 269
    const v2, 0x2009a

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    .line 272
    sget v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    .line 249
    return-void
.end method

.method public processRssiThreshold(BI)V
    .locals 7
    .param p1, "curRssi"    # B
    .param p2, "reason"    # I

    .prologue
    .line 284
    const/16 v4, 0x7f

    if-eq p1, v4, :cond_0

    const/16 v4, -0x80

    if-ne p1, v4, :cond_1

    .line 285
    :cond_0
    const-string/jumbo v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processRssiThreshold: Invalid rssi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v4, v4, v0

    if-ge p1, v4, :cond_3

    .line 292
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    aget-byte v1, v4, v0

    .line 293
    .local v1, "maxRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRssiRanges:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v2, v4, v5

    .line 297
    .local v2, "minRssi":B
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiStateMachine;->updateCapabilities(Landroid/net/wifi/WifiConfiguration;)V

    .line 299
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->startRssiMonitoringOffload(BB)I

    move-result v3

    .line 300
    .local v3, "ret":I
    const-string/jumbo v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-program RSSI thresholds for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    const-string/jumbo v6, ": ["

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    const-string/jumbo v6, ", "

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    const-string/jumbo v6, "], curRssi="

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 301
    const-string/jumbo v6, " ret="

    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "maxRssi":B
    .end local v2    # "minRssi":B
    .end local v3    # "ret":I
    :cond_2
    return-void

    .line 288
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 2228
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2227
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 2221
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2220
    return-void
.end method

.method recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I
    .param p3, "onlyAnnotate"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 496
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 501
    :cond_0
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 504
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method registerConnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7088
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 7089
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7092
    .local v2, "now_ms":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7093
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 7094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 7095
    iput-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 7096
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 7097
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 7098
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 7099
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 7100
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 7102
    :cond_0
    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mBadLinkspeedcount:I

    .line 7087
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "now_ms":J
    :cond_1
    return-void
.end method

.method registerDisconnected()V
    .locals 6

    .prologue
    .line 7107
    iget v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 7108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7111
    .local v2, "now_ms":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 7112
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 7113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 7114
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v1, :cond_0

    .line 7116
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    .line 7106
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "now_ms":J
    :cond_0
    return-void
.end method

.method public registerNetworkDisabled(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 309
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " registerNetworkDisabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    const v2, 0x2009a

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 310
    sget v0, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    .line 306
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .prologue
    .line 2236
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2235
    return-void
.end method

.method public removeAppConfigs(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2561
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2562
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2563
    iput p2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2564
    const v1, 0x20061

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2559
    return-void
.end method

.method public removeUserConfigs(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2571
    const v0, 0x20098

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 2570
    return-void
.end method

.method renewDhcp()V
    .locals 2

    .prologue
    .line 5101
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->maybeInitDhcpStateMachine()V

    .line 5102
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/BaseDhcpStateMachine;->registerForPreDhcpNotification()V

    .line 5103
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    .line 5100
    return-void
.end method

.method reportOnTime()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1805
    .local v0, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1807
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    sub-int v2, v7, v8

    .line 1808
    .local v2, "on":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeLastReport:I

    .line 1809
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    sub-int v6, v7, v8

    .line 1810
    .local v6, "tx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeLastReport:I

    .line 1811
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    sub-int v4, v7, v8

    .line 1812
    .local v4, "rx":I
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    iput v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeLastReport:I

    .line 1813
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1814
    .local v3, "period":I
    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine;->lastOntimeReportTimeStamp:J

    .line 1815
    const-string/jumbo v7, "[on:%d tx:%d rx:%d period:%d]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    iget v7, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    iget v8, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeScreenStateChange:I

    sub-int v2, v7, v8

    .line 1818
    iget-wide v8, p0, Lcom/android/server/wifi/WifiStateMachine;->lastScreenStateChangeTimeStamp:J

    sub-long v8, v0, v8

    long-to-int v3, v8

    .line 1819
    const-string/jumbo v7, " from screen [on:%d period:%d]"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public declared-synchronized resetCountryCode()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 2476
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mRevertCountryCodeOnCellularLoss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetting country code to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 2478
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDefaultCountryCode:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 2475
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetSimAuthNetworks()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 2486
    const v0, 0x20065

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2485
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2553
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2552
    return-void
.end method

.method sendScanResultsAvailableBroadcast(Z)V
    .locals 3
    .param p1, "scanSucceeded"    # Z

    .prologue
    .line 4778
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4779
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4780
    const-string/jumbo v1, "resultsUpdated"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4781
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4777
    return-void
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1505
    return-void
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 2457
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2458
    sget-boolean v2, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Ignoring resetting of country code"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 2448
    return-void

    .line 2460
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 2461
    .local v0, "countryCodeSequence":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 2462
    .local v1, "currentCountryCode":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2463
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2465
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2466
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    const v3, 0x20050

    invoke-virtual {p0, v3, v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "countryCodeSequence":I
    .end local v1    # "currentCountryCode":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2164
    if-eqz p1, :cond_0

    .line 2165
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2163
    :goto_0
    return-void

    .line 2167
    :cond_0
    const v0, 0x2000e

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2519
    if-eqz p2, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2521
    const-string/jumbo v1, "wifi_frequency_band"

    .line 2520
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2524
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2518
    return-void
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 2
    .param p1, "enabled"    # I

    .prologue
    const/4 v0, 0x0

    .line 1401
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    .line 1402
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1403
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableSsidWhitelist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1404
    const v0, 0x20049

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1398
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2439
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x2004d

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2438
    return-void

    :cond_0
    move v0, v1

    .line 2439
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 2073
    if-eqz p2, :cond_0

    .line 2074
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2072
    :goto_0
    return-void

    .line 2076
    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2175
    sget-boolean v0, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2176
    :cond_0
    const v0, 0x20048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2174
    return-void
.end method

.method public setSupplicantRunning(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2062
    if-eqz p1, :cond_0

    .line 2063
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2061
    :goto_0
    return-void

    .line 2065
    :cond_0
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2080
    return-void
.end method

.method shouldSwitchNetwork(I)Z
    .locals 8
    .param p1, "networkDelta"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4168
    if-gtz p1, :cond_0

    .line 4169
    return v6

    .line 4171
    :cond_0
    move v0, p1

    .line 4172
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_6

    .line 4173
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->getEnableAutoJoinWhenAssociated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4174
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 4177
    const/16 v0, -0x3e8

    .line 4197
    :goto_0
    if-lez v0, :cond_7

    .line 4198
    return v7

    .line 4183
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    .line 4184
    :cond_2
    add-int/lit16 v0, v0, -0x3e7

    .line 4188
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldSwitchNetwork  txSuccessRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4189
    const-string/jumbo v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4190
    const-string/jumbo v2, " rxSuccessRate="

    .line 4188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4190
    const-string/jumbo v2, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4191
    const-string/jumbo v2, " delta "

    .line 4188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4191
    const-string/jumbo v2, " -> "

    .line 4188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4185
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-wide v2, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 4186
    :cond_5
    add-int/lit8 v0, v0, -0x6

    goto :goto_1

    .line 4194
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldSwitchNetwork  delta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4195
    const-string/jumbo v2, " -> "

    .line 4194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4200
    :cond_7
    return v6
.end method

.method smToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 6703
    const-string/jumbo v0, "unknown"

    .line 6704
    .local v0, "s":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 7081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7084
    :goto_0
    return-object v0

    .line 6706
    :sswitch_0
    const-string/jumbo v0, "DRIVER_HUNG_EVENT"

    goto :goto_0

    .line 6709
    :sswitch_1
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_HALF_CONNECTED"

    goto :goto_0

    .line 6712
    :sswitch_2
    const-string/jumbo v0, "AsyncChannel.CMD_CHANNEL_DISCONNECTED"

    goto :goto_0

    .line 6715
    :sswitch_3
    const-string/jumbo v0, "CMD_SET_FREQUENCY_BAND"

    goto :goto_0

    .line 6718
    :sswitch_4
    const-string/jumbo v0, "CMD_DELAYED_NETWORK_DISCONNECT"

    goto :goto_0

    .line 6721
    :sswitch_5
    const-string/jumbo v0, "CMD_TEST_NETWORK_DISCONNECT"

    goto :goto_0

    .line 6724
    :sswitch_6
    const-string/jumbo v0, "CMD_OBTAINING_IP_ADDRESS_WATCHDOG_TIMER"

    goto :goto_0

    .line 6727
    :sswitch_7
    const-string/jumbo v0, "CMD_DISABLE_EPHEMERAL_NETWORK"

    goto :goto_0

    .line 6730
    :sswitch_8
    const-string/jumbo v0, "CMD_START_DRIVER"

    goto :goto_0

    .line 6733
    :sswitch_9
    const-string/jumbo v0, "CMD_STOP_DRIVER"

    goto :goto_0

    .line 6736
    :sswitch_a
    const-string/jumbo v0, "CMD_STOP_SUPPLICANT"

    goto :goto_0

    .line 6739
    :sswitch_b
    const-string/jumbo v0, "CMD_STOP_SUPPLICANT_FAILED"

    goto :goto_0

    .line 6742
    :sswitch_c
    const-string/jumbo v0, "CMD_START_SUPPLICANT"

    goto :goto_0

    .line 6745
    :sswitch_d
    const-string/jumbo v0, "CMD_REQUEST_AP_CONFIG"

    goto :goto_0

    .line 6748
    :sswitch_e
    const-string/jumbo v0, "CMD_RESPONSE_AP_CONFIG"

    goto :goto_0

    .line 6751
    :sswitch_f
    const-string/jumbo v0, "CMD_TETHER_STATE_CHANGE"

    goto :goto_0

    .line 6754
    :sswitch_10
    const-string/jumbo v0, "CMD_TETHER_NOTIFICATION_TIMED_OUT"

    goto :goto_0

    .line 6757
    :sswitch_11
    const-string/jumbo v0, "CMD_BLUETOOTH_ADAPTER_STATE_CHANGE"

    goto :goto_0

    .line 6760
    :sswitch_12
    const-string/jumbo v0, "CMD_ADD_OR_UPDATE_NETWORK"

    goto :goto_0

    .line 6763
    :sswitch_13
    const-string/jumbo v0, "CMD_REMOVE_NETWORK"

    goto :goto_0

    .line 6766
    :sswitch_14
    const-string/jumbo v0, "CMD_ENABLE_NETWORK"

    goto :goto_0

    .line 6769
    :sswitch_15
    const-string/jumbo v0, "CMD_ENABLE_ALL_NETWORKS"

    goto :goto_0

    .line 6772
    :sswitch_16
    const-string/jumbo v0, "CMD_AUTO_CONNECT"

    goto :goto_0

    .line 6775
    :sswitch_17
    const-string/jumbo v0, "CMD_AUTO_ROAM"

    goto :goto_0

    .line 6778
    :sswitch_18
    const-string/jumbo v0, "CMD_AUTO_SAVE_NETWORK"

    goto :goto_0

    .line 6781
    :sswitch_19
    const-string/jumbo v0, "CMD_BOOT_COMPLETED"

    goto :goto_0

    .line 6784
    :sswitch_1a
    const-string/jumbo v0, "CMD_START_DHCP"

    goto :goto_0

    .line 6787
    :sswitch_1b
    const-string/jumbo v0, "CMD_STOP_DHCP"

    goto :goto_0

    .line 6790
    :sswitch_1c
    const-string/jumbo v0, "CMD_RENEW_DHCP"

    goto :goto_0

    .line 6793
    :sswitch_1d
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION"

    goto :goto_0

    .line 6796
    :sswitch_1e
    const-string/jumbo v0, "CMD_POST_DHCP_ACTION"

    goto :goto_0

    .line 6799
    :sswitch_1f
    const-string/jumbo v0, "CMD_PRE_DHCP_ACTION_COMPLETE"

    goto :goto_0

    .line 6802
    :sswitch_20
    const-string/jumbo v0, "CMD_ON_QUIT"

    goto/16 :goto_0

    .line 6805
    :sswitch_21
    const-string/jumbo v0, "WifiP2pServiceImpl.DISCONNECT_WIFI_REQUEST"

    goto/16 :goto_0

    .line 6808
    :sswitch_22
    const-string/jumbo v0, "WifiManager.DISABLE_NETWORK"

    goto/16 :goto_0

    .line 6811
    :sswitch_23
    const-string/jumbo v0, "CMD_BLACKLIST_NETWORK"

    goto/16 :goto_0

    .line 6814
    :sswitch_24
    const-string/jumbo v0, "CMD_CLEAR_BLACKLIST"

    goto/16 :goto_0

    .line 6817
    :sswitch_25
    const-string/jumbo v0, "CMD_SAVE_CONFIG"

    goto/16 :goto_0

    .line 6820
    :sswitch_26
    const-string/jumbo v0, "CMD_GET_CONFIGURED_NETWORKS"

    goto/16 :goto_0

    .line 6823
    :sswitch_27
    const-string/jumbo v0, "CMD_GET_SUPPORTED_FEATURES"

    goto/16 :goto_0

    .line 6826
    :sswitch_28
    const-string/jumbo v0, "CMD_UNWANTED_NETWORK"

    goto/16 :goto_0

    .line 6829
    :sswitch_29
    const-string/jumbo v0, "CMD_NETWORK_STATUS"

    goto/16 :goto_0

    .line 6832
    :sswitch_2a
    const-string/jumbo v0, "CMD_GET_LINK_LAYER_STATS"

    goto/16 :goto_0

    .line 6835
    :sswitch_2b
    const-string/jumbo v0, "CMD_GET_MATCHING_CONFIG"

    goto/16 :goto_0

    .line 6838
    :sswitch_2c
    const-string/jumbo v0, "CMD_GET_PRIVILEGED_CONFIGURED_NETWORKS"

    goto/16 :goto_0

    .line 6841
    :sswitch_2d
    const-string/jumbo v0, "CMD_DISCONNECT"

    goto/16 :goto_0

    .line 6844
    :sswitch_2e
    const-string/jumbo v0, "CMD_RECONNECT"

    goto/16 :goto_0

    .line 6847
    :sswitch_2f
    const-string/jumbo v0, "CMD_REASSOCIATE"

    goto/16 :goto_0

    .line 6850
    :sswitch_30
    const-string/jumbo v0, "CMD_GET_CONNECTION_STATISTICS"

    goto/16 :goto_0

    .line 6853
    :sswitch_31
    const-string/jumbo v0, "CMD_SET_HIGH_PERF_MODE"

    goto/16 :goto_0

    .line 6856
    :sswitch_32
    const-string/jumbo v0, "CMD_SET_COUNTRY_CODE"

    goto/16 :goto_0

    .line 6859
    :sswitch_33
    const-string/jumbo v0, "CMD_ENABLE_RSSI_POLL"

    goto/16 :goto_0

    .line 6862
    :sswitch_34
    const-string/jumbo v0, "CMD_RSSI_POLL"

    goto/16 :goto_0

    .line 6865
    :sswitch_35
    const-string/jumbo v0, "CMD_START_PACKET_FILTERING"

    goto/16 :goto_0

    .line 6868
    :sswitch_36
    const-string/jumbo v0, "CMD_STOP_PACKET_FILTERING"

    goto/16 :goto_0

    .line 6871
    :sswitch_37
    const-string/jumbo v0, "CMD_SET_SUSPEND_OPT_ENABLED"

    goto/16 :goto_0

    .line 6874
    :sswitch_38
    const-string/jumbo v0, "CMD_NO_NETWORKS_PERIODIC_SCAN"

    goto/16 :goto_0

    .line 6877
    :sswitch_39
    const-string/jumbo v0, "CMD_UPDATE_LINKPROPERTIES"

    goto/16 :goto_0

    .line 6880
    :sswitch_3a
    const-string/jumbo v0, "CMD_RELOAD_TLS_AND_RECONNECT"

    goto/16 :goto_0

    .line 6883
    :sswitch_3b
    const-string/jumbo v0, "CONNECT_NETWORK"

    goto/16 :goto_0

    .line 6886
    :sswitch_3c
    const-string/jumbo v0, "SAVE_NETWORK"

    goto/16 :goto_0

    .line 6889
    :sswitch_3d
    const-string/jumbo v0, "FORGET_NETWORK"

    goto/16 :goto_0

    .line 6892
    :sswitch_3e
    const-string/jumbo v0, "SUP_CONNECTION_EVENT"

    goto/16 :goto_0

    .line 6895
    :sswitch_3f
    const-string/jumbo v0, "SUP_DISCONNECTION_EVENT"

    goto/16 :goto_0

    .line 6898
    :sswitch_40
    const-string/jumbo v0, "SCAN_RESULTS_EVENT"

    goto/16 :goto_0

    .line 6901
    :sswitch_41
    const-string/jumbo v0, "SCAN_FAILED_EVENT"

    goto/16 :goto_0

    .line 6904
    :sswitch_42
    const-string/jumbo v0, "SUPPLICANT_STATE_CHANGE_EVENT"

    goto/16 :goto_0

    .line 6907
    :sswitch_43
    const-string/jumbo v0, "AUTHENTICATION_FAILURE_EVENT"

    goto/16 :goto_0

    .line 6910
    :sswitch_44
    const-string/jumbo v0, "SSID_TEMP_DISABLED"

    goto/16 :goto_0

    .line 6913
    :sswitch_45
    const-string/jumbo v0, "SSID_REENABLED"

    goto/16 :goto_0

    .line 6916
    :sswitch_46
    const-string/jumbo v0, "WPS_SUCCESS_EVENT"

    goto/16 :goto_0

    .line 6919
    :sswitch_47
    const-string/jumbo v0, "WPS_FAIL_EVENT"

    goto/16 :goto_0

    .line 6922
    :sswitch_48
    const-string/jumbo v0, "SUP_REQUEST_IDENTITY"

    goto/16 :goto_0

    .line 6925
    :sswitch_49
    const-string/jumbo v0, "NETWORK_CONNECTION_EVENT"

    goto/16 :goto_0

    .line 6928
    :sswitch_4a
    const-string/jumbo v0, "NETWORK_DISCONNECTION_EVENT"

    goto/16 :goto_0

    .line 6931
    :sswitch_4b
    const-string/jumbo v0, "ASSOCIATION_REJECTION_EVENT"

    goto/16 :goto_0

    .line 6934
    :sswitch_4c
    const-string/jumbo v0, "WifiMonitor.ANQP_DONE_EVENT"

    goto/16 :goto_0

    .line 6937
    :sswitch_4d
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_DONE_EVENT"

    goto/16 :goto_0

    .line 6940
    :sswitch_4e
    const-string/jumbo v0, "WifiMonitor.HS20_DEAUTH_EVENT"

    goto/16 :goto_0

    .line 6943
    :sswitch_4f
    const-string/jumbo v0, "WifiMonitor.GAS_QUERY_START_EVENT"

    goto/16 :goto_0

    .line 6946
    :sswitch_50
    const-string/jumbo v0, "WifiMonitor.RSN_PMKID_MISMATCH_EVENT"

    goto/16 :goto_0

    .line 6949
    :sswitch_51
    const-string/jumbo v0, "CMD_SET_OPERATIONAL_MODE"

    goto/16 :goto_0

    .line 6952
    :sswitch_52
    const-string/jumbo v0, "CMD_START_SCAN"

    goto/16 :goto_0

    .line 6955
    :sswitch_53
    const-string/jumbo v0, "CMD_DISABLE_P2P_RSP"

    goto/16 :goto_0

    .line 6958
    :sswitch_54
    const-string/jumbo v0, "CMD_DISABLE_P2P_REQ"

    goto/16 :goto_0

    .line 6961
    :sswitch_55
    const-string/jumbo v0, "GOOD_LINK_DETECTED"

    goto/16 :goto_0

    .line 6964
    :sswitch_56
    const-string/jumbo v0, "POOR_LINK_DETECTED"

    goto/16 :goto_0

    .line 6967
    :sswitch_57
    const-string/jumbo v0, "GROUP_CREATING_TIMED_OUT"

    goto/16 :goto_0

    .line 6970
    :sswitch_58
    const-string/jumbo v0, "P2P_CONNECTION_CHANGED"

    goto/16 :goto_0

    .line 6973
    :sswitch_59
    const-string/jumbo v0, "P2P.DISCONNECT_WIFI_RESPONSE"

    goto/16 :goto_0

    .line 6976
    :sswitch_5a
    const-string/jumbo v0, "P2P.SET_MIRACAST_MODE"

    goto/16 :goto_0

    .line 6979
    :sswitch_5b
    const-string/jumbo v0, "P2P.BLOCK_DISCOVERY"

    goto/16 :goto_0

    .line 6982
    :sswitch_5c
    const-string/jumbo v0, "P2P.SET_COUNTRY_CODE"

    goto/16 :goto_0

    .line 6985
    :sswitch_5d
    const-string/jumbo v0, "CANCEL_WPS"

    goto/16 :goto_0

    .line 6988
    :sswitch_5e
    const-string/jumbo v0, "CANCEL_WPS_FAILED"

    goto/16 :goto_0

    .line 6991
    :sswitch_5f
    const-string/jumbo v0, "CANCEL_WPS_SUCCEDED"

    goto/16 :goto_0

    .line 6994
    :sswitch_60
    const-string/jumbo v0, "START_WPS"

    goto/16 :goto_0

    .line 6997
    :sswitch_61
    const-string/jumbo v0, "START_WPS_SUCCEEDED"

    goto/16 :goto_0

    .line 7000
    :sswitch_62
    const-string/jumbo v0, "WPS_FAILED"

    goto/16 :goto_0

    .line 7003
    :sswitch_63
    const-string/jumbo v0, "WPS_COMPLETED"

    goto/16 :goto_0

    .line 7006
    :sswitch_64
    const-string/jumbo v0, "RSSI_PKTCNT_FETCH"

    goto/16 :goto_0

    .line 7009
    :sswitch_65
    const-string/jumbo v0, "CMD_IP_CONFIGURATION_LOST"

    goto/16 :goto_0

    .line 7012
    :sswitch_66
    const-string/jumbo v0, "CMD_IP_CONFIGURATION_SUCCESSFUL"

    goto/16 :goto_0

    .line 7015
    :sswitch_67
    const-string/jumbo v0, "CMD_IP_REACHABILITY_LOST"

    goto/16 :goto_0

    .line 7018
    :sswitch_68
    const-string/jumbo v0, "CMD_STATIC_IP_SUCCESSFUL"

    goto/16 :goto_0

    .line 7021
    :sswitch_69
    const-string/jumbo v0, "CMD_STATIC_IP_FAILURE"

    goto/16 :goto_0

    .line 7024
    :sswitch_6a
    const-string/jumbo v0, "DHCP_SUCCESS"

    goto/16 :goto_0

    .line 7027
    :sswitch_6b
    const-string/jumbo v0, "DHCP_FAILURE"

    goto/16 :goto_0

    .line 7030
    :sswitch_6c
    const-string/jumbo v0, "CMD_TARGET_BSSID"

    goto/16 :goto_0

    .line 7033
    :sswitch_6d
    const-string/jumbo v0, "CMD_ASSOCIATED_BSSID"

    goto/16 :goto_0

    .line 7036
    :sswitch_6e
    const-string/jumbo v0, "CMD_REMOVE_APP_CONFIGURATIONS"

    goto/16 :goto_0

    .line 7039
    :sswitch_6f
    const-string/jumbo v0, "CMD_REMOVE_USER_CONFIGURATIONS"

    goto/16 :goto_0

    .line 7042
    :sswitch_70
    const-string/jumbo v0, "CMD_ROAM_WATCHDOG_TIMER"

    goto/16 :goto_0

    .line 7045
    :sswitch_71
    const-string/jumbo v0, "CMD_SCREEN_STATE_CHANGED"

    goto/16 :goto_0

    .line 7048
    :sswitch_72
    const-string/jumbo v0, "CMD_DISCONNECTING_WATCHDOG_TIMER"

    goto/16 :goto_0

    .line 7051
    :sswitch_73
    const-string/jumbo v0, "CMD_RESTART_AUTOJOIN_OFFLOAD"

    goto/16 :goto_0

    .line 7054
    :sswitch_74
    const-string/jumbo v0, "CMD_STARTED_PNO_DBG"

    goto/16 :goto_0

    .line 7057
    :sswitch_75
    const-string/jumbo v0, "CMD_STARTED_GSCAN_DBG"

    goto/16 :goto_0

    .line 7060
    :sswitch_76
    const-string/jumbo v0, "CMD_PNO_NETWORK_FOUND"

    goto/16 :goto_0

    .line 7063
    :sswitch_77
    const-string/jumbo v0, "CMD_UPDATE_ASSOCIATED_SCAN_PERMISSION"

    goto/16 :goto_0

    .line 7066
    :sswitch_78
    const-string/jumbo v0, "CMD_START_IP_PACKET_OFFLOAD"

    goto/16 :goto_0

    .line 7069
    :sswitch_79
    const-string/jumbo v0, "CMD_STOP_IP_PACKET_OFFLOAD"

    goto/16 :goto_0

    .line 7072
    :sswitch_7a
    const-string/jumbo v0, "CMD_START_RSSI_MONITORING_OFFLOAD"

    goto/16 :goto_0

    .line 7075
    :sswitch_7b
    const-string/jumbo v0, "CMD_STOP_RSSI_MONITORING_OFFLOAD"

    goto/16 :goto_0

    .line 7078
    :sswitch_7c
    const-string/jumbo v0, "CMD_RSSI_THRESHOLD_BREACH"

    goto/16 :goto_0

    .line 6704
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6a
        0x2 -> :sswitch_6b
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_c
        0x2000c -> :sswitch_a
        0x2000d -> :sswitch_8
        0x2000e -> :sswitch_9
        0x2000f -> :sswitch_68
        0x20010 -> :sswitch_69
        0x20011 -> :sswitch_b
        0x2001b -> :sswitch_d
        0x2001c -> :sswitch_e
        0x2001d -> :sswitch_f
        0x2001e -> :sswitch_10
        0x2001f -> :sswitch_11
        0x20034 -> :sswitch_12
        0x20035 -> :sswitch_13
        0x20036 -> :sswitch_14
        0x20037 -> :sswitch_15
        0x20038 -> :sswitch_23
        0x20039 -> :sswitch_24
        0x2003a -> :sswitch_25
        0x2003b -> :sswitch_26
        0x2003d -> :sswitch_27
        0x2003e -> :sswitch_2c
        0x2003f -> :sswitch_2a
        0x20047 -> :sswitch_52
        0x20048 -> :sswitch_51
        0x20049 -> :sswitch_2d
        0x2004a -> :sswitch_2e
        0x2004b -> :sswitch_2f
        0x2004c -> :sswitch_30
        0x2004d -> :sswitch_31
        0x20050 -> :sswitch_32
        0x20052 -> :sswitch_33
        0x20053 -> :sswitch_34
        0x20054 -> :sswitch_35
        0x20055 -> :sswitch_36
        0x20056 -> :sswitch_37
        0x20057 -> :sswitch_4
        0x20058 -> :sswitch_38
        0x20059 -> :sswitch_5
        0x2005a -> :sswitch_3
        0x2005d -> :sswitch_6
        0x2005e -> :sswitch_70
        0x2005f -> :sswitch_71
        0x20060 -> :sswitch_72
        0x20061 -> :sswitch_6e
        0x20062 -> :sswitch_7
        0x20063 -> :sswitch_2b
        0x20084 -> :sswitch_54
        0x20085 -> :sswitch_53
        0x20086 -> :sswitch_19
        0x2008a -> :sswitch_66
        0x2008b -> :sswitch_65
        0x2008c -> :sswitch_39
        0x2008d -> :sswitch_6c
        0x2008e -> :sswitch_3a
        0x2008f -> :sswitch_16
        0x20090 -> :sswitch_28
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_18
        0x20093 -> :sswitch_6d
        0x20094 -> :sswitch_29
        0x20095 -> :sswitch_67
        0x20098 -> :sswitch_6f
        0x2009a -> :sswitch_73
        0x2009b -> :sswitch_74
        0x2009c -> :sswitch_76
        0x2009e -> :sswitch_77
        0x2009f -> :sswitch_75
        0x200a0 -> :sswitch_78
        0x200a1 -> :sswitch_79
        0x200a2 -> :sswitch_7a
        0x200a3 -> :sswitch_7b
        0x200a4 -> :sswitch_7c
        0x21015 -> :sswitch_56
        0x21016 -> :sswitch_55
        0x23001 -> :sswitch_57
        0x2300b -> :sswitch_58
        0x2300c -> :sswitch_21
        0x2300d -> :sswitch_59
        0x2300e -> :sswitch_5a
        0x2300f -> :sswitch_5b
        0x23010 -> :sswitch_5c
        0x24001 -> :sswitch_3e
        0x24002 -> :sswitch_3f
        0x24003 -> :sswitch_49
        0x24004 -> :sswitch_4a
        0x24005 -> :sswitch_40
        0x24006 -> :sswitch_42
        0x24007 -> :sswitch_43
        0x24008 -> :sswitch_46
        0x24009 -> :sswitch_47
        0x2400c -> :sswitch_0
        0x2400d -> :sswitch_44
        0x2400e -> :sswitch_45
        0x2400f -> :sswitch_48
        0x24011 -> :sswitch_41
        0x2402b -> :sswitch_4b
        0x2402c -> :sswitch_4c
        0x24033 -> :sswitch_4f
        0x24034 -> :sswitch_4d
        0x2403e -> :sswitch_4e
        0x2403f -> :sswitch_50
        0x25001 -> :sswitch_3b
        0x25004 -> :sswitch_3d
        0x25007 -> :sswitch_3c
        0x2500a -> :sswitch_60
        0x2500b -> :sswitch_61
        0x2500c -> :sswitch_62
        0x2500d -> :sswitch_63
        0x2500e -> :sswitch_5d
        0x2500f -> :sswitch_5e
        0x25010 -> :sswitch_5f
        0x25011 -> :sswitch_22
        0x25014 -> :sswitch_64
        0x30001 -> :sswitch_1a
        0x30002 -> :sswitch_1b
        0x30003 -> :sswitch_1c
        0x30004 -> :sswitch_1d
        0x30005 -> :sswitch_1e
        0x30006 -> :sswitch_20
        0x30007 -> :sswitch_1f
    .end sparse-switch
.end method

.method smToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6699
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->smToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method startDhcp()V
    .locals 2

    .prologue
    .line 5095
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->maybeInitDhcpStateMachine()V

    .line 5096
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/BaseDhcpStateMachine;->registerForPreDhcpNotification()V

    .line 5097
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    .line 5094
    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2405
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2406
    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2404
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2421
    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2420
    return-void
.end method

.method startRadioScanStats()V
    .locals 2

    .prologue
    .line 1852
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v0

    .line 1853
    .local v0, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v0, :cond_0

    .line 1854
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTimeStartScan:I

    .line 1855
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTimeStartScan:I

    .line 1856
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTimeStartScan:I

    .line 1857
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mOnTime:I

    .line 1858
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mTxTime:I

    .line 1859
    iget v1, v0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iput v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRxTime:I

    .line 1851
    :cond_0
    return-void
.end method

.method startRssiMonitoringOffload(BB)I
    .locals 1
    .param p1, "maxRssi"    # B
    .param p2, "minRssi"    # B

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/wifi/WifiNative;->startRssiMonitoring(BBLcom/android/server/wifi/WifiNative$WifiRssiEventHandler;)I

    move-result v0

    return v0
.end method

.method public startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "scanCounter"    # I
    .param p3, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1696
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1697
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "customized_scan_settings"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1698
    const-string/jumbo v1, "customized_scan_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1699
    const-string/jumbo v1, "scan_request_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1700
    const v1, 0x20047

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1695
    return-void
.end method

.method startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "restrictChannelList"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 8132
    if-nez p1, :cond_0

    .line 8133
    return v10

    .line 8141
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v5

    .line 8142
    .local v5, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v5, :cond_1

    .line 8143
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8144
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_2

    .line 8146
    :cond_1
    return v8

    .line 8148
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 8149
    const v7, 0x36ee80

    .line 8148
    invoke-virtual {v6, p1, v7, p2}, Lcom/android/server/wifi/WifiConfigStore;->makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;

    move-result-object v2

    .line 8150
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-eqz v6, :cond_6

    .line 8151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8152
    .local v4, "freqs":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 8153
    .local v3, "first":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8154
    .local v0, "channel":Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 8155
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8156
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8157
    const/4 v3, 0x0

    goto :goto_0

    .line 8160
    .end local v0    # "channel":Ljava/lang/Integer;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "starting scan for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8163
    invoke-direct {p0, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->startScanNative(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8167
    const/4 v6, -0x2

    invoke-direct {p0, v6, v9}, Lcom/android/server/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    .line 8168
    sget v6, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_OK:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    .line 8173
    :goto_1
    return v8

    .line 8171
    :cond_5
    sget v6, Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I

    iput v6, p0, Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I

    goto :goto_1

    .line 8175
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    .end local v3    # "first":Z
    .end local v4    # "freqs":Ljava/lang/StringBuilder;
    :cond_6
    sget-boolean v6, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no channels for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8176
    :cond_7
    return v10
.end method

.method public startScanForUntrustedSettingChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1682
    const/4 v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 1681
    return-void
.end method

.method startWifiIPPacketOffload(ILcom/android/server/connectivity/KeepalivePacketData;I)I
    .locals 4
    .param p1, "slot"    # I
    .param p2, "packetData"    # Lcom/android/server/connectivity/KeepalivePacketData;
    .param p3, "intervalSeconds"    # I

    .prologue
    const/4 v3, 0x0

    .line 1876
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    mul-int/lit16 v2, p3, 0x3e8

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wifi/WifiNative;->startSendingOffloadedPacket(ILcom/android/server/connectivity/KeepalivePacketData;I)I

    move-result v0

    .line 1877
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1879
    const-string/jumbo v2, "): hardware error "

    .line 1878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1880
    const/16 v1, -0x1f

    return v1

    .line 1882
    :cond_0
    return v3
.end method

.method stopDhcp()V
    .locals 2

    .prologue
    .line 5107
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    if-eqz v0, :cond_0

    .line 5109
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 5110
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/BaseDhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/BaseDhcpStateMachine;->sendMessage(I)V

    .line 5106
    :cond_0
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2413
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2414
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2412
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 2428
    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2427
    return-void
.end method

.method stopRssiMonitoringOffload()I
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->stopRssiMonitoring()I

    move-result v0

    return v0
.end method

.method stopWifiIPPacketOffload(I)I
    .locals 3
    .param p1, "slot"    # I

    .prologue
    const/4 v2, 0x0

    .line 1887
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->stopSendingOffloadedPacket(I)I

    move-result v0

    .line 1888
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 1889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWifiIPPacketOffload("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): hardware error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1890
    const/16 v1, -0x1f

    return v1

    .line 1892
    :cond_0
    return v2
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2245
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2246
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2247
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2248
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    .line 2347
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2348
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2349
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2350
    return v0

    .line 2348
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .prologue
    .line 2334
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 2333
    :goto_0
    const v3, 0x20036

    invoke-virtual {p1, v3, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2335
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 2336
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2337
    return v0

    .line 2334
    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2335
    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_1
.end method

.method public syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 13
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1649
    const v10, 0x2003c

    invoke-virtual {p1, v10}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v7

    .line 1650
    .local v7, "resultMsg":Landroid/os/Message;
    const/4 v5, 0x0

    .line 1651
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    iget-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_3

    .line 1652
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1654
    .local v2, "freqs":Ljava/lang/String;
    const-string/jumbo v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1655
    .local v4, "lines":[Ljava/lang/String;
    array-length v10, v4

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v3, v4, v9

    .line 1656
    .local v3, "line":Ljava/lang/String;
    const-string/jumbo v11, "MHz"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1658
    new-instance v0, Landroid/net/wifi/WifiChannel;

    invoke-direct {v0}, Landroid/net/wifi/WifiChannel;-><init>()V

    .line 1659
    .local v0, "c":Landroid/net/wifi/WifiChannel;
    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1660
    .local v6, "prop":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 1655
    .end local v0    # "c":Landroid/net/wifi/WifiChannel;
    .end local v6    # "prop":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1662
    .restart local v0    # "c":Landroid/net/wifi/WifiChannel;
    .restart local v6    # "prop":[Ljava/lang/String;
    :cond_1
    const/4 v11, 0x1

    :try_start_0
    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Landroid/net/wifi/WifiChannel;->channelNum:I

    .line 1663
    const/4 v11, 0x3

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    :goto_2
    const-string/jumbo v11, "(DFS)"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    iput-boolean v11, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    .line 1667
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1668
    .end local v0    # "c":Landroid/net/wifi/WifiChannel;
    .end local v6    # "prop":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, "Mode[B] Channels:"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1673
    .end local v2    # "freqs":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :cond_3
    invoke-virtual {v7}, Landroid/os/Message;->recycle()V

    .line 1674
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    :goto_3
    return-object v5

    :cond_4
    move-object v5, v8

    goto :goto_3

    .line 1664
    .restart local v0    # "c":Landroid/net/wifi/WifiChannel;
    .restart local v2    # "freqs":Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    .restart local v6    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "uuid"    # I
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2259
    const v2, 0x2003b

    invoke-virtual {p2, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2260
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2261
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2262
    return-object v0
.end method

.method public syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2286
    const v2, 0x2004c

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2287
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConnectionStatistics;

    .line 2288
    .local v0, "result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2289
    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .prologue
    .line 2155
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2156
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2307
    const v2, 0x2003f

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2308
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiLinkLayerStats;

    .line 2309
    .local v0, "result":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2310
    return-object v0
.end method

.method public syncGetMatchingWifiConfig(Landroid/net/wifi/ScanResult;Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2274
    const v1, 0x20063

    invoke-virtual {p2, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2275
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    return-object v1
.end method

.method public syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2267
    const v2, 0x2003e

    .line 2266
    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2268
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2269
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2270
    return-object v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2183
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 2184
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .line 2186
    .local v0, "result":Lcom/android/server/wifi/ScanDetail;
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2183
    .end local v0    # "result":Lcom/android/server/wifi/ScanDetail;
    .end local v1    # "result$iterator":Ljava/util/Iterator;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "result$iterator":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    monitor-exit v4

    .line 2188
    return-object v2
.end method

.method public syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2297
    const v2, 0x2003d

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2298
    .local v0, "resultMsg":Landroid/os/Message;
    iget v1, v0, Landroid/os/Message;->arg1:I

    .line 2299
    .local v1, "supportedFeatureSet":I
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2300
    return v1
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 2085
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2086
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2087
    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2088
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2141
    const-string/jumbo v0, "[invalid state]"

    return-object v0

    .line 2131
    :pswitch_0
    const-string/jumbo v0, "disabling"

    return-object v0

    .line 2133
    :pswitch_1
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 2135
    :pswitch_2
    const-string/jumbo v0, "enabling"

    return-object v0

    .line 2137
    :pswitch_3
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 2139
    :pswitch_4
    const-string/jumbo v0, "failed"

    return-object v0

    .line 2129
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2114
    const-string/jumbo v0, "[invalid state]"

    return-object v0

    .line 2104
    :pswitch_0
    const-string/jumbo v0, "disabling"

    return-object v0

    .line 2106
    :pswitch_1
    const-string/jumbo v0, "disabled"

    return-object v0

    .line 2108
    :pswitch_2
    const-string/jumbo v0, "enabling"

    return-object v0

    .line 2110
    :pswitch_3
    const-string/jumbo v0, "enabled"

    return-object v0

    .line 2112
    :pswitch_4
    const-string/jumbo v0, "unknown state"

    return-object v0

    .line 2102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNative;->getNfcWpsConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1642
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1643
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1644
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1645
    return v0

    .line 1643
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    .line 2319
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2320
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2321
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2322
    return v0

    .line 2320
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiStateMachine;->getWiFiInfoForUid(I)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 2582
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2583
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2584
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2585
    return v0

    .line 2583
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method unwantedNetwork(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 8087
    const v0, 0x20090

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 8086
    return-void
.end method

.method updateAssociatedScanPermission()V
    .locals 8

    .prologue
    .line 1465
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine;->allowFullBandScanAndAssociated()Z

    move-result v0

    .line 1468
    .local v0, "allowed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1469
    .local v2, "now":J
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 1476
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mConnectedModeGScanOffloadStarted:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1477
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x4e20

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 1480
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_1

    .line 1481
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v4, " useHalBasedAutoJoinOffload restart offload"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePermission "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1484
    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    sub-long v4, v2, v4

    .line 1483
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1484
    const-string/jumbo v4, "ms"

    .line 1483
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->startGScanConnectedModeOffload(Ljava/lang/String;)Z

    .line 1485
    iput-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastScanPermissionUpdate:J

    .line 1463
    .end local v0    # "allowed":Z
    .end local v2    # "now":J
    :cond_2
    return-void

    .line 1470
    .restart local v0    # "allowed":Z
    .restart local v2    # "now":J
    :cond_3
    sget-boolean v1, Lcom/android/server/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_4

    .line 1471
    const-string/jumbo v1, "WifiStateMachine"

    const-string/jumbo v4, " useHalBasedAutoJoinOffload stop offload"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiStateMachine;->stopPnoOffload()V

    .line 1474
    const-string/jumbo v1, " useHalBasedAutoJoinOffload"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiStateMachine;->stopGScan(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .prologue
    .line 2589
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v2

    .line 2591
    if-eqz p1, :cond_0

    .line 2592
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2594
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v1, :cond_3

    .line 2595
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_2

    .line 2598
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2599
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 2600
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 2599
    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 2601
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2617
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 2588
    return-void

    .line 2605
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 2606
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 2607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 2618
    :catch_0
    move-exception v0

    .local v0, "ignore":Landroid/os/RemoteException;
    goto :goto_1

    .line 2610
    .end local v0    # "ignore":Landroid/os/RemoteException;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v1, :cond_1

    .line 2612
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 2613
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2614
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2589
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method useHalBasedAutoJoinOffload()Z
    .locals 1

    .prologue
    .line 1416
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoEnableInDevSettings:Z

    if-eqz v0, :cond_0

    .line 1417
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mHalBasedPnoDriverSupported:Z

    .line 1416
    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
