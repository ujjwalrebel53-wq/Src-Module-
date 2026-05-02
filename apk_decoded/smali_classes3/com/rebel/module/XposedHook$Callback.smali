.class public interface abstract Lcom/rebel/module/XposedHook$Callback;
.super Ljava/lang/Object;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/XposedHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation
.end method
