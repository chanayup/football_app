import 'package:flutter/material.dart';
import 'package:football_app_test/domain/entities/sportType.dart';
import 'package:football_app_test/presentation/style/color.dart';

class SportTypeWidget extends StatefulWidget {

  final SportType sportType;

  const SportTypeWidget({ Key? key, required this.sportType }) : super(key: key);

  @override
  _SportTypeWidgetState createState() => _SportTypeWidgetState(sportType);
}

class _SportTypeWidgetState extends State<SportTypeWidget> {

  _SportTypeWidgetState(this._sportType);
  final SportType _sportType;

  double _widthSelected = 0;
  double _heightSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                splashColor: Colors.transparent,
                onTap: ()=> setState((){
                  _sportType.isSelect = !_sportType.isSelect;
                  changeSelected(_sportType.isSelect);
                }),
                child: Container(
                  width: 92,
                  height: 92,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorConstraint.black2
                          ),
                        ),
                      ),
                      Positioned(
                        child: Align(
                          alignment: Alignment.center,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 100),
                            width: _widthSelected,
                            height: _heightSelected,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [_sportType.colorPrimary, _sportType.colorSecondary],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Image.asset(
                            _sportType.image,
                            width: 44,
                            height: 44,
                            color: ColorConstraint.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          SizedBox(height: 8,),
          Text(
            _sportType.title,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Source Sans Pro',
              fontWeight: FontWeight.w600,
              color: ColorConstraint.white,
              shadows: [
                BoxShadow(
                  color: ColorConstraint.black1,
                  offset: Offset(0,3),
                  spreadRadius: 5,
                  blurRadius: 8
                )
              ]
            ),
          )
        ],
      ),
    );
  }

  changeSelected(bool isSelected) {
    if (isSelected) {
      setState(() {
        _widthSelected = 92;
        _heightSelected = 92;
      });
    } else {
      setState(() {
        _widthSelected = 0;
        _heightSelected = 0;
      });
    }
  }

}