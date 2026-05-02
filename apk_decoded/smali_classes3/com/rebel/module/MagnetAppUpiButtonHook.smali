.class public Lcom/rebel/module/MagnetAppUpiButtonHook;
.super Ljava/lang/Object;
.source "MagnetAppUpiButtonHook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MagnetUPI"

.field private static appClassLoader:Ljava/lang/ClassLoader;

.field private static mainActivityRef:Landroid/app/Activity;


# direct methods
.method static bridge synthetic -$$Nest$sfputmainActivityRef(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/rebel/module/MagnetAppUpiButtonHook;->mainActivityRef:Landroid/app/Activity;

    return-void
.end method

.method static bridge synthetic -$$Nest$smaddUpiButton(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->addUpiButton(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrebuildResponse(Ljava/lang/Object;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/rebel/module/MagnetAppUpiButtonHook;->rebuildResponse(Ljava/lang/Object;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtriggerUpiActivation(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->triggerUpiActivation(Landroid/app/Activity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/rebel/module/MagnetAppUpiButtonHook;->mainActivityRef:Landroid/app/Activity;

    .line 42
    sput-object v0, Lcom/rebel/module/MagnetAppUpiButtonHook;->appClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addUpiButton(Landroid/app/Activity;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, "rootView":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "container":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .local v2, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x800055

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    const/16 v3, 0x18

    invoke-static {p0, v3}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 102
    .local v3, "margin":I
    const/16 v4, 0x50

    invoke-static {p0, v4}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 104
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v4, "button":Landroid/widget/TextView;
    const-string v5, "\u26a1 Activate UPI"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    const/16 v5, 0x14

    invoke-static {p0, v5}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xe

    invoke-static {p0, v8}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    .line 109
    invoke-static {p0, v5}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v8}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v8

    .line 108
    invoke-virtual {v4, v7, v9, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 113
    .local v5, "bg":Landroid/graphics/drawable/GradientDrawable;
    const-string v7, "#6C63FF"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 114
    const/16 v7, 0x1c

    invoke-static {p0, v7}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 115
    invoke-static {p0, v6}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    const-string v7, "#5A52D5"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/rebel/module/MagnetAppUpiButtonHook;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setElevation(F)V

    .line 119
    new-instance v6, Lcom/rebel/module/MagnetAppUpiButtonHook$2;

    invoke-direct {v6, p0}, Lcom/rebel/module/MagnetAppUpiButtonHook$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v6, "MagnetUPI: \u2713 Floating UPI button added"

    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .line 349
    int-to-float v0, p1

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 349
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 2
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 45
    const-string v0, "MagnetUPI: \u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 46
    const-string v1, "MagnetUPI: Installing UPI Button hooks (v6 \u2014 ProcessActivity)..."

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sput-object v1, Lcom/rebel/module/MagnetAppUpiButtonHook;->appClassLoader:Ljava/lang/ClassLoader;

    .line 51
    invoke-static {p0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->installFloatingButton(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 52
    invoke-static {p0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->installHyperServicesLogger(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 53
    invoke-static {p0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->installApiResponsePatcher(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 55
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 56
    const-string v1, "MagnetUPI: UPI Button hooks (v6) complete"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static installApiResponsePatcher(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 259
    :try_start_0
    const-string v0, "okhttp3.internal.http.RealInterceptorChain"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 262
    .local v0, "interceptorChainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "proceed"

    new-instance v2, Lcom/rebel/module/MagnetAppUpiButtonHook$5;

    invoke-direct {v2, p0}, Lcom/rebel/module/MagnetAppUpiButtonHook$5;-><init>(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 323
    const-string v1, "MagnetUPI: \u2713 Hook C installed"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v0    # "interceptorChainClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnetUPI: \u2717 Hook C failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 327
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static installFloatingButton(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 5
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 65
    :try_start_0
    const-string v0, "in.magnetapp.MainActivity"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "onCreate"

    const-class v3, Landroid/os/Bundle;

    new-instance v4, Lcom/rebel/module/MagnetAppUpiButtonHook$1;

    invoke-direct {v4}, Lcom/rebel/module/MagnetAppUpiButtonHook$1;-><init>()V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 87
    const-string v0, "MagnetUPI: \u2713 Hook A installed"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnetUPI: \u2717 Hook A failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 91
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static installHyperServicesLogger(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3
    .param p0, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 210
    :try_start_0
    const-string v0, "in.juspay.services.HyperServices"

    iget-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    .local v0, "hyperServicesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "process"

    new-instance v2, Lcom/rebel/module/MagnetAppUpiButtonHook$3;

    invoke-direct {v2}, Lcom/rebel/module/MagnetAppUpiButtonHook$3;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 234
    const-string v1, "initiate"

    new-instance v2, Lcom/rebel/module/MagnetAppUpiButtonHook$4;

    invoke-direct {v2}, Lcom/rebel/module/MagnetAppUpiButtonHook$4;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 248
    const-string v1, "MagnetUPI: \u2713 Hook B installed"

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v0    # "hyperServicesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnetUPI: \u2717 Hook B failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 252
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static rebuildResponse(Ljava/lang/Object;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/Object;
    .locals 9
    .param p0, "orig"    # Ljava/lang/Object;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 331
    const-string v0, "create"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "okhttp3.ResponseBody"

    iget-object v3, p2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 332
    .local v2, "rbClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "okhttp3.MediaType"

    iget-object v4, p2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 333
    .local v3, "mtClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "parse"

    const-string v5, "application/json; charset=utf-8"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 336
    .local v4, "mt":Ljava/lang/Object;
    :try_start_1
    const-string v5, "Companion"

    invoke-static {v2, v5}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 337
    .local v5, "c":Ljava/lang/Object;
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v5    # "c":Ljava/lang/Object;
    .local v0, "nb":Ljava/lang/Object;
    goto :goto_0

    .line 338
    .end local v0    # "nb":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    .line 339
    .local v5, "e1":Ljava/lang/Throwable;
    :try_start_2
    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v0, v6}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    .restart local v0    # "nb":Ljava/lang/Object;
    nop

    .line 342
    .end local v5    # "e1":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    const-string v5, "newBuilder"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 343
    .local v5, "b":Ljava/lang/Object;
    const-string v7, "body"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v7, "build"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    .line 340
    .end local v0    # "nb":Ljava/lang/Object;
    .local v5, "e1":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .local v0, "e2":Ljava/lang/Throwable;
    return-object v1

    .line 345
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v2    # "rbClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mtClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "mt":Ljava/lang/Object;
    .end local v5    # "e1":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    return-object v1
.end method

.method private static triggerUpiActivation(Landroid/app/Activity;)V
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;

    .line 138
    move-object/from16 v1, p0

    const-string v0, "zet"

    const-string v2, "process"

    const-string v3, "payload"

    const-string v4, "action"

    const-string v5, "enableJwsAuth"

    const-string v6, "service"

    const-string v7, "requestId"

    const-string v8, "getHyperServices"

    const-string v9, "in.juspay.hypersdkreact.HyperSdkReactModule"

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 140
    .local v12, "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v12, v8, v13}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 142
    .local v13, "hyperServices":Ljava/lang/Object;
    if-nez v13, :cond_0

    .line 143
    const-string v0, "SDK not loaded. Wait for app to fully load."

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void

    .line 147
    :cond_0
    const-string v14, "isInitialised"

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 148
    .local v14, "isInit":Z
    if-nez v14, :cond_1

    .line 149
    const-string v0, "SDK not initiated yet."

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    return-void

    .line 153
    :cond_1
    const-string v15, "MagnetUPI: HyperServices ready, launching ProcessActivity..."

    invoke-static {v15}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 156
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v15, "payload":Lorg/json/JSONObject;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "upi_activate_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v16, v12

    .end local v12    # "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v16, "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v10, "in.juspay.hyperupi"

    invoke-virtual {v15, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v10, "innerPayload":Lorg/json/JSONObject;
    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 162
    const-string v11, "onboarding"

    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v11, "clientId"

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v11, "merchantId"

    invoke-virtual {v10, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v0, "environment"

    const-string v11, "production"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v0, "issuingPsp"

    const-string v11, "RBL_BIZ"

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v15, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v0, "MagnetUPI: \u2605\u2605 Calling process() on MainActivity..."

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 171
    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "MagnetUPI: \u2713 process() called in MainActivity"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 173
    const-string v0, "UPI Activation launching..."

    const/4 v11, 0x0

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v10    # "innerPayload":Lorg/json/JSONObject;
    .end local v13    # "hyperServices":Ljava/lang/Object;
    .end local v14    # "isInit":Z
    .end local v15    # "payload":Lorg/json/JSONObject;
    .end local v16    # "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 175
    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 176
    .local v10, "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MagnetUPI: \u2717 MainActivity process error: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v1, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    :try_start_1
    const-string v0, "MagnetUPI: Trying fallback direct process()..."

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 187
    .local v8, "hyperServices":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 188
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v9, "payload":Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "upi_fb_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v7, "in.juspay.hyperapi"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v6, "inner":Lorg/json/JSONObject;
    const/4 v11, 0x1

    invoke-virtual {v6, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 193
    const-string v5, "upiGetSessionToken"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v9, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "MagnetUPI: \u2713 Fallback process() succeeded"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    .end local v0    # "reactModuleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "inner":Lorg/json/JSONObject;
    .end local v8    # "hyperServices":Ljava/lang/Object;
    .end local v9    # "payload":Lorg/json/JSONObject;
    :cond_2
    goto :goto_0

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    .local v0, "fb":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MagnetUPI: \u2717 Fallback also failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 203
    .end local v0    # "fb":Ljava/lang/Throwable;
    .end local v10    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
