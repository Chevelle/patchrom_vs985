.class public Lcom/android/internal/util/omni/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.android.launcher"

.field private static final SYSTEMUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackagePersistentId(Ljava/lang/String;Landroid/content/Context;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string/jumbo v4, "activity"

    .line 132
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 136
    .local v0, "am":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    const/4 v5, 0x2

    .line 135
    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "mTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 139
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    return v4

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public static killActiveTask(Landroid/content/Context;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 45
    invoke-static {p0, p1}, Lcom/android/internal/util/omni/TaskUtils;->resolveCurrentLauncherPackageForUser(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "defaultHomePackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 49
    .local v6, "targetKilled":Z
    const-string/jumbo v8, "activity"

    .line 48
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 50
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 51
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "appInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 52
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 55
    .local v7, "uid":I
    const/16 v8, 0x2710

    if-lt v7, v8, :cond_3

    .line 56
    const/16 v8, 0x4e1f

    if-gt v7, v8, :cond_3

    .line 57
    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x64

    if-ne v8, v10, :cond_3

    .line 58
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_4

    .line 59
    iget-object v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_3

    aget-object v5, v10, v8

    .line 60
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v12, "com.android.systemui"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 61
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 59
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0, v5, p1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    .line 63
    const/4 v6, 0x1

    .line 72
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 73
    const/4 v8, 0x1

    return v8

    .line 68
    :cond_4
    iget v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    .line 69
    const/4 v6, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "uid":I
    :cond_5
    return v9
.end method

.method public static movePackageToFront(ILandroid/content/Context;)V
    .locals 2
    .param p0, "mId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string/jumbo v1, "activity"

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 151
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 148
    return-void
.end method

.method private static resolveCurrentLauncherPackageForUser(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 119
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v4, "android.intent.category.HOME"

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, "launcherIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 123
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 124
    .local v0, "launcherInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    :cond_0
    const-string/jumbo v3, "com.android.launcher"

    return-object v3

    .line 126
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v3
.end method

.method public static toggleLastApp(Landroid/content/Context;I)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x2

    .line 80
    invoke-static {p0, p1}, Lcom/android/internal/util/omni/TaskUtils;->resolveCurrentLauncherPackageForUser(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "defaultHomePackage":Ljava/lang/String;
    const-string/jumbo v10, "activity"

    .line 82
    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 85
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v10, 0x5

    .line 84
    invoke-virtual {v0, v10, v12, p1}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v9

    .line 89
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x0

    .line 90
    .local v5, "lastAppId":I
    const/4 v6, 0x0

    .line 91
    .local v6, "lastAppIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    .end local v6    # "lastAppIntent":Landroid/content/Intent;
    .local v3, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    if-nez v6, :cond_2

    .line 92
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 95
    const-string/jumbo v10, "com.android.systemui"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 91
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 97
    .local v4, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 98
    iget-object v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .local v6, "lastAppIntent":Landroid/content/Intent;
    goto :goto_1

    .line 101
    .end local v4    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "lastAppIntent":Landroid/content/Intent;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_2
    if-lez v5, :cond_4

    .line 103
    const v10, 0x10a0030

    .line 104
    const v11, 0x10a0031

    .line 102
    invoke-static {p0, v10, v11}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 106
    .local v7, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 105
    invoke-virtual {v0, v5, v12, v10}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 79
    .end local v7    # "opts":Landroid/app/ActivityOptions;
    :cond_3
    :goto_2
    return-void

    .line 107
    :cond_4
    if-eqz v6, :cond_3

    .line 109
    const/high16 v10, 0x100000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    :try_start_0
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v6, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 112
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_2
.end method
