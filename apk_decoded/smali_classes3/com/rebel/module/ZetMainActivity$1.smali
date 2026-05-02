.class Lcom/rebel/module/ZetMainActivity$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ZetMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rebel/module/ZetMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rebel/module/ZetMainActivity;


# direct methods
.method constructor <init>(Lcom/rebel/module/ZetMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rebel/module/ZetMainActivity;

    .line 71
    iput-object p1, p0, Lcom/rebel/module/ZetMainActivity$1;->this$0:Lcom/rebel/module/ZetMainActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 74
    iget-object v0, p0, Lcom/rebel/module/ZetMainActivity$1;->this$0:Lcom/rebel/module/ZetMainActivity;

    invoke-static {v0, p1}, Lcom/rebel/module/ZetMainActivity;->-$$Nest$mupdateDots(Lcom/rebel/module/ZetMainActivity;I)V

    .line 75
    return-void
.end method
