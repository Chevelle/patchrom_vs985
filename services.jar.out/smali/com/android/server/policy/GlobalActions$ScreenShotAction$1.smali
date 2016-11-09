.class Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions$ScreenShotAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get2(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1613
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get1(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-get1(Lcom/android/server/policy/GlobalActions$ScreenShotAction;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1615
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$1;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-set0(Lcom/android/server/policy/GlobalActions$ScreenShotAction;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1611
    return-void

    .line 1612
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
