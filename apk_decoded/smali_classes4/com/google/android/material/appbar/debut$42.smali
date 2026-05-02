.class Lcom/google/android/material/appbar/debut$42;
.super Ljava/lang/Object;
.source "debut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/debut;->triggerPinOverlay(Landroid/app/Activity;)V
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

    .line 968
    iput-object p1, p0, Lcom/google/android/material/appbar/debut$42;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/android/material/appbar/debut$42;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/material/appbar/debut;->-$$Nest$smshowPinOverlay(Landroid/app/Activity;)V

    .line 972
    return-void
.end method
