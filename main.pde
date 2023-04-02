float x,y,ds1,ds2; //distance square
float xs=300,ys=500; //source x,y
int mode=1;

void setup(){
    size(1300,1000); 
}
void draw(){
    background(0);

    xs=mouseX+90;
    ys=mouseY-30;
    fill(255,0,0);
    circle(xs,ys,40); //+
    fill(0,60,255);
    circle(700,500,40); //-

    for(x=50;x<=950;x+=50){
        for(y=50;y<=950;y+=50){
            strokeWeight(0);
            fill(0,255,0);
            circle(x,y,3);
            strokeWeight(1);
            ds1=(x-xs)*(x-xs)+(y-ys)*(y-ys);
            ds2=(x-700)*(x-700)+(y-500)*(y-500);
            if(ds1>=400&&ds2>=400){
                stroke(255,255,60);
                //line(x,y,
                //    x+(x-xs)*ds2*10000/(ds1+ds2)/(ds1+ds2)-(x-700)*ds1*10000/(ds1+ds2)/(ds1+ds2), 
                //    y+(y-ys)*ds2*10000/(ds1+ds2)/(ds1+ds2)-(y-500)*ds1*10000/(ds1+ds2)/(ds1+ds2));
                line(x,y,
                    x+(x-xs)*1500/ds1-(x-700)*1500/ds2,
                    y+(y-ys)*1500/ds1-(y-500)*1500/ds2);
            }
        }
    }

    noStroke();
    fill(30,30,30);
    rect(1000,30,400,940,30);
    fill(200,200,200);
    textSize(30);
    text("Mode:",1050,110);
    strokeWeight(1);
    stroke(200,200,200);
    fill(30,30,30);
    rect(1050,130,200,40);
    fill(200,200,200);
    triangle(1226,142,1242,142,1234,158);
    switch(mode){
        case 1:
            text("grid(map)",1057,160);
    }

}
