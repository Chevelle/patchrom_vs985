.class final Lcom/android/server/policy/GlobalActions$ScreenShotAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenShotAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;,
        Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;
    }
.end annotation


# instance fields
.field private mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field final mScreenshotTrigger:Ljava/lang/Runnable;

.field private mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/GlobalActions$ScreenShotAction;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1607
    const v0, 0x108036f

    const v1, 0x104005e

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 1603
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotLock:Ljava/lang/Object;

    .line 1610
    new-instance v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;-><init>(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 1621
    new-instance v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;-><init>(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotTrigger:Ljava/lang/Runnable;

    .line 1606
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ScreenShotAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 6

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 1694
    return-void

    .line 1696
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotTrigger:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1691
    return-void

    .line 1692
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1672
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringRestrictedKeyguard()Z
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x1

    return v0
.end method

.method public showForCurrentUser()Z
    .locals 1

    .prologue
    .line 1687
    const/4 v0, 0x1

    return v0
.end method
