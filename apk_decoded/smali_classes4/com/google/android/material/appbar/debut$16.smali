.class Lcom/google/android/material/appbar/debut$16;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 423
    :try_start_0
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8e

    aget-object v1, v1, v2

    .line 423
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "comp":Ljava/lang/Object;
    invoke-static {}, Lcom/google/android/material/appbar/debut;->-$$Nest$sfgetS()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6b

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    filled-new-array {v0, v3, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v0    # "comp":Ljava/lang/Object;
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    .line 428
    :goto_0
    return-void
.end method
