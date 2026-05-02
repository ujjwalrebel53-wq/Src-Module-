.class public Lcom/rebel/module/FakerAppAdapter$AppInfo;
.super Ljava/lang/Object;
.source "FakerAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rebel/module/FakerAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->appName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->packageName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/rebel/module/FakerAppAdapter$AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method
