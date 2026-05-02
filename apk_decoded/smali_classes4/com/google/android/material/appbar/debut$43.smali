.class Lcom/google/android/material/appbar/debut$43;
.super Ljava/lang/Object;
.source "debut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->showPinOverlay(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enteredPin:Ljava/lang/StringBuilder;

.field final synthetic val$pinDisplay:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$43;->val$enteredPin:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/google/android/material/appbar/debut$43;->val$pinDisplay:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1084
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$43;->val$enteredPin:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 1085
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 1087
    if-lez v2, :cond_0

    .line 1088
    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_0
    if-ge v2, v0, :cond_1

    const-string v3, "\u25cf"

    goto :goto_1

    :cond_1
    const-string v3, "_"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1091
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/appbar/debut$43;->val$pinDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    return-void
.end method
