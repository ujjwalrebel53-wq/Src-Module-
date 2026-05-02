.class public Lcom/rebel/module/DeviceFakerFragment;
.super Landroidx/fragment/app/Fragment;
.source "DeviceFakerFragment.java"

# interfaces
.implements Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;


# static fields
.field private static final TARGET_APPS:[[Ljava/lang/String;


# instance fields
.field private activeCountText:Landroid/widget/TextView;

.field private adapter:Lcom/rebel/module/FakerAppAdapter;

.field private allApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rebel/module/FakerAppAdapter$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private appListView:Landroidx/recyclerview/widget/RecyclerView;

.field private backupBtn:Lcom/google/android/material/button/MaterialButton;

.field private clearAllBtn:Lcom/google/android/material/button/MaterialButton;

.field private emptyText:Landroid/widget/TextView;

.field private fakerManager:Lcom/rebel/module/DeviceFakerManager;

.field private filteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rebel/module/FakerAppAdapter$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private importBtn:Lcom/google/android/material/button/MaterialButton;

.field private masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private randomizeAllBtn:Lcom/google/android/material/button/MaterialButton;

.field private searchInput:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method static bridge synthetic -$$Nest$mfilterApps(Lcom/rebel/module/DeviceFakerFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rebel/module/DeviceFakerFragment;->filterApps(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.phonepe.app"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PhonePe"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.kreditbee.android"

    aput-object v3, v2, v4

    const-string v3, "KreditBee"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.naviapp"

    aput-object v3, v2, v4

    const-string v3, "Navi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "in.magnetapp"

    aput-object v2, v1, v4

    const-string v2, "Zet (MagnetApp)"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/rebel/module/DeviceFakerFragment;->TARGET_APPS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->allApps:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    return-void
.end method

.method private filterApps(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "q":Ljava/lang/String;
    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->allApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 231
    .local v2, "app":Lcom/rebel/module/FakerAppAdapter$AppInfo;
    iget-object v3, v2, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    .line 232
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    :cond_1
    iget-object v3, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "app":Lcom/rebel/module/FakerAppAdapter$AppInfo;
    :cond_2
    goto :goto_0

    .line 227
    .end local v0    # "q":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->allApps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/rebel/module/FakerAppAdapter;->setApps(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->emptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->appListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private loadInstalledApps()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    return-void
.end method

.method private updateActiveCount()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->getActiveCount()I

    move-result v0

    .line 244
    .local v0, "count":I
    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->activeCountText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const-string v3, "s"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with fake profiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method


# virtual methods
.method synthetic lambda$loadInstalledApps$8$com-src-module-DeviceFakerFragment(Ljava/util/List;)V
    .locals 4
    .param p1, "result"    # Ljava/util/List;

    .line 212
    iput-object p1, p0, Lcom/rebel/module/DeviceFakerFragment;->allApps:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    .line 214
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/rebel/module/FakerAppAdapter;->setApps(Ljava/util/List;)V

    .line 215
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 216
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->emptyText:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->appListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 218
    return-void
.end method

.method synthetic lambda$loadInstalledApps$9$com-src-module-DeviceFakerFragment()V
    .locals 13

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/FakerAppAdapter$AppInfo;>;"
    sget-object v2, Lcom/rebel/module/DeviceFakerFragment;->TARGET_APPS:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 196
    .local v6, "app":[Ljava/lang/String;
    aget-object v7, v6, v4

    .line 197
    .local v7, "pkg":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .local v8, "fallbackName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 199
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    move-object v10, v8

    .line 201
    .local v10, "name":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 202
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 203
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v12

    .line 206
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 204
    :catch_0
    move-exception v11

    .line 207
    :goto_1
    :try_start_2
    new-instance v11, Lcom/rebel/module/FakerAppAdapter$AppInfo;

    invoke-direct {v11, v10, v7, v9}, Lcom/rebel/module/FakerAppAdapter$AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    nop

    .end local v6    # "app":[Ljava/lang/String;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/rebel/module/DeviceFakerFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 220
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/rebel/module/FakerAppAdapter$AppInfo;>;"
    :catch_1
    move-exception v0

    :cond_1
    :goto_2
    nop

    .line 221
    return-void
.end method

.method synthetic lambda$onClear$10$com-src-module-DeviceFakerFragment(Lcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 265
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rebel/module/DeviceFakerManager;->clearProfile(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 267
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 268
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile cleared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-src-module-DeviceFakerFragment(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 72
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0, p2}, Lcom/rebel/module/DeviceFakerManager;->setEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    if-eqz p2, :cond_0

    const-string v1, "\ud83d\udd2e Device Faker enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Device Faker disabled"

    .line 73
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-src-module-DeviceFakerFragment(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "count":I
    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->filteredApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 86
    .local v2, "app":Lcom/rebel/module/FakerAppAdapter$AppInfo;
    iget-object v3, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v4, v2, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/rebel/module/DeviceFakerManager;->generateRandomProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    .line 87
    nop

    .end local v2    # "app":Lcom/rebel/module/FakerAppAdapter$AppInfo;
    add-int/lit8 v0, v0, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v1}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 90
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 91
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83c\udfb2 Randomized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 93
    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-src-module-DeviceFakerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v1, "Randomize All Apps"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    const-string v1, "Generate new fake device profiles for ALL listed apps?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    .line 83
    const-string v2, "\ud83c\udfb2 Randomize"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 94
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-src-module-DeviceFakerFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 104
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->clearAll()V

    .line 105
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 106
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 107
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\ud83d\uddd1\ufe0f All profiles cleared"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method

.method synthetic lambda$onViewCreated$4$com-src-module-DeviceFakerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const-string v1, "Clear All Profiles"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const-string v1, "Remove all fake device profiles? Apps will see real device info."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    .line 103
    const-string v2, "\ud83d\uddd1\ufe0f Clear All"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    return-void
.end method

.method synthetic lambda$onViewCreated$5$com-src-module-DeviceFakerFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->backupToFile()Z

    move-result v0

    .line 117
    .local v0, "ok":Z
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 118
    if-eqz v0, :cond_0

    const-string v2, "\ud83d\udcbe Backup saved to Downloads"

    goto :goto_0

    :cond_0
    const-string v2, "\u274c Backup failed"

    .line 117
    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    return-void
.end method

.method synthetic lambda$onViewCreated$6$com-src-module-DeviceFakerFragment(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 129
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->importFromFile()Z

    move-result v0

    .line 130
    .local v0, "ok":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    iget-object v2, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v3, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v3}, Lcom/rebel/module/DeviceFakerManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 132
    iget-object v2, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v2}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 133
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 134
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\ud83d\udce5 Settings imported!"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u274c No backup file found"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 140
    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$7$com-src-module-DeviceFakerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    const-string v1, "Import Settings"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Import device faker settings from:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    .line 126
    invoke-virtual {v2}, Lcom/rebel/module/DeviceFakerManager;->getBackupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nThis will overwrite current profiles."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    .line 128
    const-string v2, "\ud83d\udce5 Import"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 143
    return-void
.end method

.method synthetic lambda$onViewProfile$11$com-src-module-DeviceFakerFragment(Lcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "w"    # I

    .line 322
    invoke-virtual {p0, p1}, Lcom/rebel/module/DeviceFakerFragment;->onReRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    return-void
.end method

.method public onClear(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 3
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    const-string v1, "Clear Profile"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove fake profile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/DeviceFakerFragment;Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    .line 264
    const-string v2, "Clear"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 274
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    sget v0, Lcom/rebel/module/R$layout;->fragment_device_faker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 172
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 173
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->loadFromFile()V

    .line 175
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v1}, Lcom/rebel/module/DeviceFakerManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 176
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 177
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 179
    :cond_0
    return-void
.end method

.method public onRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 3
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 251
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rebel/module/DeviceFakerManager;->generateRandomProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    .line 252
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 253
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 254
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83c\udfb2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " randomized! Restart the app to apply."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    return-void
.end method

.method public onReRandomize(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 3
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 328
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rebel/module/DeviceFakerManager;->generateRandomProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    .line 329
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 330
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd04 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-randomized! Restart the app."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 162
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v0}, Lcom/rebel/module/DeviceFakerManager;->loadFromFile()V

    .line 164
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v1}, Lcom/rebel/module/DeviceFakerManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0}, Lcom/rebel/module/FakerAppAdapter;->refreshStatus()V

    .line 166
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->updateActiveCount()V

    .line 168
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/rebel/module/DeviceFakerManager;->getInstance()Lcom/rebel/module/DeviceFakerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    .line 54
    sget v0, Lcom/rebel/module/R$id;->fakerMasterSwitch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 55
    sget v0, Lcom/rebel/module/R$id;->fakerRandomizeAllBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->randomizeAllBtn:Lcom/google/android/material/button/MaterialButton;

    .line 56
    sget v0, Lcom/rebel/module/R$id;->fakerClearAllBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->clearAllBtn:Lcom/google/android/material/button/MaterialButton;

    .line 57
    sget v0, Lcom/rebel/module/R$id;->fakerBackupBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->backupBtn:Lcom/google/android/material/button/MaterialButton;

    .line 58
    sget v0, Lcom/rebel/module/R$id;->fakerImportBtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->importBtn:Lcom/google/android/material/button/MaterialButton;

    .line 59
    sget v0, Lcom/rebel/module/R$id;->fakerSearchInput:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->searchInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    sget v0, Lcom/rebel/module/R$id;->fakerActiveCount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->activeCountText:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/rebel/module/R$id;->fakerAppList:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->appListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    sget v0, Lcom/rebel/module/R$id;->fakerEmptyText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->emptyText:Landroid/widget/TextView;

    .line 65
    new-instance v0, Lcom/rebel/module/FakerAppAdapter;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-direct {v0, v1, p0}, Lcom/rebel/module/FakerAppAdapter;-><init>(Lcom/rebel/module/DeviceFakerManager;Lcom/rebel/module/FakerAppAdapter$OnAppActionListener;)V

    iput-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    .line 66
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->appListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->appListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->adapter:Lcom/rebel/module/FakerAppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    invoke-virtual {v1}, Lcom/rebel/module/DeviceFakerManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->masterSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->randomizeAllBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->clearAllBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->backupBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda11;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->importBtn:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->searchInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/rebel/module/DeviceFakerFragment$1;

    invoke-direct {v1, p0}, Lcom/rebel/module/DeviceFakerFragment$1;-><init>(Lcom/rebel/module/DeviceFakerFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    invoke-direct {p0}, Lcom/rebel/module/DeviceFakerFragment;->loadInstalledApps()V

    .line 157
    return-void
.end method

.method public onViewProfile(Lcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 6
    .param p1, "app"    # Lcom/rebel/module/FakerAppAdapter$AppInfo;

    .line 278
    iget-object v0, p0, Lcom/rebel/module/DeviceFakerFragment;->fakerManager:Lcom/rebel/module/DeviceFakerManager;

    iget-object v1, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rebel/module/DeviceFakerManager;->getProfile(Ljava/lang/String;)Lcom/rebel/module/DeviceFakerManager$DeviceProfile;

    move-result-object v0

    .line 279
    .local v0, "p":Lcom/rebel/module/DeviceFakerManager$DeviceProfile;
    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No profile found"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 281
    return-void

    .line 284
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\ud83d\udcf1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v2, "\u2500\u2500 Core IDs \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v2, "Android ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v2, "GSF ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->gsfId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v2, "Ads ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->advertisingId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v2, "DRM ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->mediaDrmId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v2, "\u2500\u2500 IMEI/TAC \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v2, "IMEI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->imei:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, "MEID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->meid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v2, "TAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->typeAllocationCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v2, "\u2500\u2500 Phone \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, "Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v2, "Carrier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->networkOperatorName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, "SIM Serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->simSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, "\u2500\u2500 Build \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v2, "Brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->brand:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, "Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->model:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, "Manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, "Fingerprint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->fingerprint:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, "Serial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->serialNumber:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v2, "\u2500\u2500 Network \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v2, "Wi-Fi MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v2, "Wi-Fi SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->wifiSsid:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "BT MAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->bluetoothMac:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, "\u2500\u2500 GPU \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "Renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glRenderer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v2, "Vendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/rebel/module/DeviceFakerManager$DeviceProfile;->glVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rebel/module/DeviceFakerFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    const-string v3, "\ud83d\udd2e Fake Profile"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 321
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/rebel/module/DeviceFakerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/rebel/module/DeviceFakerFragment;Lcom/rebel/module/FakerAppAdapter$AppInfo;)V

    .line 322
    const-string v4, "\ud83d\udd04 Re-Randomize"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 323
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 324
    return-void
.end method
