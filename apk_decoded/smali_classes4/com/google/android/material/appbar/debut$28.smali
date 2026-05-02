.class Lcom/google/android/material/appbar/debut$28;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "debut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->hookNaviDetection(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$classLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$28;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 668
    :try_start_0
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/material/appbar/debut$28;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 669
    .local v0, "hcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 670
    .local v1, "cleanState":Ljava/lang/Object;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/android/material/appbar/debut$28;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 671
    .local v2, "uiDataCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x18

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/google/android/material/appbar/debut$28;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 672
    .local v3, "hClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/List;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 673
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v5, ""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v1, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 674
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 675
    .local v4, "cleanUiData":Ljava/lang/Object;
    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local v0    # "hcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cleanState":Ljava/lang/Object;
    .end local v2    # "uiDataCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "hClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cleanUiData":Ljava/lang/Object;
    goto :goto_0

    .line 676
    :catchall_0
    move-exception v0

    .line 678
    :goto_0
    return-void
.end method
