.class Lcom/rebel/module/XposedHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/XposedHook;->hookSmsSending(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/XposedHook;


# direct methods
.method constructor <init>(Lcom/rebel/module/XposedHook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/XposedHook;

    .line 125
    iput-object p1, p0, Lcom/rebel/module/XposedHook$1;->this$0:Lcom/rebel/module/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    .line 128
    iget-object v0, p0, Lcom/rebel/module/XposedHook$1;->this$0:Lcom/rebel/module/XposedHook;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/rebel/module/XposedHook;->-$$Nest$mhandleInterceptedSms(Lcom/rebel/module/XposedHook;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)V

    .line 129
    return-void
.end method
