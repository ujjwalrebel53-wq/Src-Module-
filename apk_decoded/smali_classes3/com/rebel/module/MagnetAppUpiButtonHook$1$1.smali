.class Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;
.super Ljava/lang/Object;
.source "MagnetAppUpiButtonHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/MagnetAppUpiButtonHook$1;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/MagnetAppUpiButtonHook$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/rebel/module/MagnetAppUpiButtonHook$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/MagnetAppUpiButtonHook$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;->this$0:Lcom/rebel/module/MagnetAppUpiButtonHook$1;

    iput-object p2, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->-$$Nest$smaddUpiButton(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MagnetUPI: \u2717 Button error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 83
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
