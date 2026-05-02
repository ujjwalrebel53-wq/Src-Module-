.class Lcom/rebel/module/MagnetAppUpiButtonHook$2;
.super Ljava/lang/Object;
.source "MagnetAppUpiButtonHook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/MagnetAppUpiButtonHook;->addUpiButton(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 122
    const-string v0, "MagnetUPI: \u2605\u2605\u2605 UPI BUTTON CLICKED"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/rebel/module/MagnetAppUpiButtonHook$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rebel/module/MagnetAppUpiButtonHook;->-$$Nest$smtriggerUpiActivation(Landroid/app/Activity;)V

    .line 124
    return-void
.end method
