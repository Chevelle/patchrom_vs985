.class final Lcom/android/server/policy/GlobalActions$ScreenRecordAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenRecordAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ScreenRecordAction$1;
    }
.end annotation


# instance fields
.field private mScreenrecordConnection:Landroid/content/ServiceConnection;

.field private final mScreenrecordLock:Ljava/lang/Object;

.field final mScreenrecordTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions$ScreenRecordAction;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions$ScreenRecordAction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions$ScreenRecordAction;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1706
    const v0, 0x108036c

    const v1, 0x104005f

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 1702
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordLock:Ljava/lang/Object;

    .line 1709
    new-instance v0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$ScreenRecordAction$1;-><init>(Lcom/android/server/policy/GlobalActions$ScreenRecordAction;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordTimeout:Ljava/lang/Runnable;

    .line 1705
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ScreenRecordAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 8

    .prologue
    .line 1742
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1743
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 1744
    return-void

    .line 1746
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 1747
    const-string/jumbo v5, "com.android.systemui.omni.screenrecord.TakeScreenrecordService"

    .line 1746
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1749
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1750
    new-instance v1, Lcom/android/server/policy/GlobalActions$ScreenRecordAction$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$ScreenRecordAction$2;-><init>(Lcom/android/server/policy/GlobalActions$ScreenRecordAction;)V

    .line 1778
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1779
    iput-object v1, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 1782
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$ScreenRecordAction;->mScreenrecordTimeout:Ljava/lang/Runnable;

    const-wide/32 v6, 0x1c61a0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 1741
    return-void

    .line 1742
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1732
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1722
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringRestrictedKeyguard()Z
    .locals 1

    .prologue
    .line 1727
    const/4 v0, 0x1

    return v0
.end method

.method public showForCurrentUser()Z
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x1

    return v0
.end method
