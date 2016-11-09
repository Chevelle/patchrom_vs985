.class Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;
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
    .line 1621
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1624
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 1625
    const-string/jumbo v4, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 1624
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1627
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1628
    new-instance v1, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2$1;-><init>(Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;)V

    .line 1663
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v3, v3, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1664
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    invoke-static {v3, v1}, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->-set0(Lcom/android/server/policy/GlobalActions$ScreenShotAction;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1665
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v3, v3, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ScreenShotAction$2;->this$1:Lcom/android/server/policy/GlobalActions$ScreenShotAction;

    iget-object v4, v4, Lcom/android/server/policy/GlobalActions$ScreenShotAction;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1623
    :cond_0
    return-void
.end method
