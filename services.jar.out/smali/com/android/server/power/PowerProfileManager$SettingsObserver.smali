.class final Lcom/android/server/power/PowerProfileManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerProfileManager;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerProfileManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerProfileManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/power/PowerProfileManager$SettingsObserver;->this$0:Lcom/android/server/power/PowerProfileManager;

    .line 100
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/power/PowerProfileManager$SettingsObserver;->this$0:Lcom/android/server/power/PowerProfileManager;

    invoke-static {v0, p2}, Lcom/android/server/power/PowerProfileManager;->-wrap0(Lcom/android/server/power/PowerProfileManager;Landroid/net/Uri;)V

    .line 104
    return-void
.end method
