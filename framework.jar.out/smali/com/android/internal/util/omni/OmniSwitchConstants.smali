.class public Lcom/android/internal/util/omni/OmniSwitchConstants;
.super Ljava/lang/Object;
.source "OmniSwitchConstants.java"


# static fields
.field private static final ACTION_TOGGLE_OVERLAY:Ljava/lang/String; = "org.omnirom.omniswitch.ACTION_TOGGLE_OVERLAY"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "org.omnirom.omniswitch"

.field public static INTENT_LAUNCH_APP:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "org.omnirom.omniswitch"

    const-string/jumbo v2, "org.omnirom.omniswitch.SettingsActivity"

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/omni/OmniSwitchConstants;->INTENT_LAUNCH_APP:Landroid/content/Intent;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOmniSwitchRunning(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 50
    .local v0, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 51
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "org.omnirom.omniswitch.SwitchService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const/4 v3, 0x1

    return v3

    .line 55
    .end local v1    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static toggleOmniSwitchRecents(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.omnirom.omniswitch.ACTION_TOGGLE_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "showIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 61
    return-void
.end method
