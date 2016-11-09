.class Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$myConn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get2(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1642
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get1(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get1(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1644
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-set0(Lcom/android/server/policy/GlobalActions$ScreenShotAction;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1645
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1$1;->this$3:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;->this$2:Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1640
    return-void

    .line 1641
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
