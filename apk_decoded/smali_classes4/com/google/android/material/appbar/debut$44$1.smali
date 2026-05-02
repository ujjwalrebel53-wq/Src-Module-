.class Lcom/google/android/material/appbar/debut$44$1;
.super Ljava/lang/Object;
.source "debut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut$44;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/debut$44;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/debut$44;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/appbar/debut$44;

    .line 1176
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$44$1;->this$0:Lcom/google/android/material/appbar/debut$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44$1;->this$0:Lcom/google/android/material/appbar/debut$44;

    iget-object v0, v0, Lcom/google/android/material/appbar/debut$44;->val$enteredPin:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1180
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$44$1;->this$0:Lcom/google/android/material/appbar/debut$44;

    iget-object v0, v0, Lcom/google/android/material/appbar/debut$44;->val$updateDisp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1181
    return-void
.end method
